from .base import *
from .base import env

SECRET_KEY = env("DJANGO_SECRET_KEY")

ALLOWED_HOSTS = env.list("DJANGO_ALLOWED_HOSTS", default=["juanherrera.com"])

DATABASES["default"] = env.db("DATABASE_URL")
