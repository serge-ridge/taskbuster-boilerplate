# -*- coding: utf-8 -*-
import dj_database_url
from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

ALLOWED_HOSTS = ['*']

DATABASES['default'] = dj_database_url.config()

