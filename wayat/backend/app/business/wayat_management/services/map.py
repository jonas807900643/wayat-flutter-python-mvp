import asyncio
from datetime import datetime
from functools import lru_cache

from fastapi import Depends
from pydantic import BaseSettings

from app.common.core.configuration import load_env_file_on_settings
from app.domain.wayat_management.models.status import ContactRefInfo
from app.domain.wayat_management.repositories.status import StatusRepository
from app.domain.wayat_management.repositories.user import UserRepository


class MapSettings(BaseSettings):
    update_threshold: int

    class Config:
        env_prefix = "MAP_"
        env_file = "TEST.env"


@lru_cache
def get_map_settings() -> MapSettings:
    return load_env_file_on_settings(MapSettings)


class MapService:
    def __init__(self,
                 user_repository: UserRepository = Depends(),
                 status_repository: StatusRepository = Depends(),
                 map_settings: MapSettings = Depends(get_map_settings)
                 ):
        self._user_repository = user_repository
        self._status_repository = status_repository
        self._update_threshold = map_settings.update_threshold  # minimum seconds between updates

    async def update_location(self,
                              uid: str,
                              latitude: float,
                              longitude: float):
        await self._user_repository.update_user_location(uid, latitude, longitude)
        await self._update_contacts_status(uid)
        await self._update_contacts_mode(uid, latitude, longitude)

    async def regenerate_map_status(self, uid: str):
        user_to_update = await self._user_repository.get(uid)

        if not user_to_update:
            return

        new_contact_refs = []

        for contact_uid in user_to_update.contacts:
            contact_location = await self._user_repository.get_user_location(contact_uid)
            if contact_location is not None:
                new_contact_refs.append(
                    ContactRefInfo(
                        uid=contact_uid,
                        last_updated=contact_location.last_updated,
                        location=contact_location.value
                    )
                )

        await self._status_repository.set_contact_refs(uid, new_contact_refs)

    async def _update_contacts_status(self, uid: str):
        self_user = await self._user_repository.get(uid)
        if not self_user:
            return

        user_contacts_uids = self_user.contacts
        coroutines = [self._update_contact_status(c) for c in user_contacts_uids]
        await asyncio.gather(*coroutines)

    async def _update_contact_status(self, contact_uid: str):
        contact_status = await self._status_repository.get(contact_uid)

        if self._needs_update(contact_status.last_updated):
            await self.regenerate_map_status(contact_uid)

    async def _update_contacts_mode(self, uid: str, latitude: float, longitude: float):
        # TO BE CONTINUED
        pass

    def _needs_update(self, last_updated: datetime):
        return (datetime.now(last_updated.tzinfo) - last_updated).seconds > self._update_threshold
