from .base import *
from .base import env

DEBUG = True

SECRET_KEY = env(
    "DJANGO_SECRET_KEY",
    default="wAi1G1dYbjWmVQvm4HFrofakRN0sdqOycjjNgULja0ld4CB5iMYry0Bp3TqasOFd",
)

ALLOWED_HOSTS = ["localhost", "0.0.0.0", "127.0.0.1"]

EMAIL_BACKEND = env(
    "DJANGO_EMAIL_BACKEND", default="django.core.mail.backends.console.EmailBackend"
)

INSTALLED_APPS += []
