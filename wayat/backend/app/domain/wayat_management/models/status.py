import datetime

from pydantic import BaseModel, Field

from app.common.base.base_firebase_repository import BaseFirebaseModel
from app.domain.wayat_management.models.user import GeoPoint


class ContactRefInfo(BaseModel):
    uid: str
    last_updated: datetime.datetime
    location: GeoPoint


class AppStatusEntity(BaseFirebaseModel):
    active: bool = False
    contact_refs: list[ContactRefInfo] = Field(default_factory=list)
