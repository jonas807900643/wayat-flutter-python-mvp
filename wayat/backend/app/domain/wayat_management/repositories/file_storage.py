import json
from functools import lru_cache
from typing import BinaryIO

from fastapi import Depends
from google.cloud.storage import Client, Bucket
from pydantic import BaseSettings

from app.common.core.configuration import load_env_file_on_settings


class StorageSettings(BaseSettings):
    credentials_file: str
    bucket: str
    images_path: str

    class Config:
        env_prefix = "STORAGE_"
        env_file = "TEST.env"


@lru_cache
def get_storage_settings() -> StorageSettings:
    return load_env_file_on_settings(StorageSettings)


@lru_cache
def _get_account_info():
    with open(get_storage_settings().credentials_file) as f:
        return json.load(f)


def _get_storage_client():
    return Client.from_service_account_info(_get_account_info())


class FileStorage:
    def __init__(self,
                 client: Client = Depends(_get_storage_client),
                 storage_config: StorageSettings = Depends(get_storage_settings),
                 ):
        self._client = client
        self._configuration = storage_config

    def _bucket(self) -> Bucket:
        return self._client.bucket(self._configuration.bucket)

    def upload_image(self, filename: str, data: BinaryIO, content_type: str):
        path = f"{self._configuration.images_path}/{filename}"
        self._bucket().blob(path).upload_from_file(data, content_type=content_type)
