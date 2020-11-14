from .base import *


SECRET_KEY = os.getenv("SECRET_KEY")

ALLOWED_HOSTS = os.getenv("DJANGO_ALLOWED_HOSTS")

DATABASES["default"] = os.getenv("DATABASE_URL")
