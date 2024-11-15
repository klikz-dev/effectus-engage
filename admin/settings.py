import os
import sys
from pathlib import Path

from django.core.management.utils import get_random_secret_key


# Environment Variables

BASE_DIR = Path(__file__).resolve().parent.parent

SECRET_KEY = os.getenv("SECRET_KEY", get_random_secret_key())
DEBUG = os.getenv("DEBUG", "False") == "True"
DEVELOPMENT_MODE = os.getenv("DEVELOPMENT_MODE", "False") == "True"

ALLOWED_HOSTS = ['*']


# Application definition

INSTALLED_APPS = [
    'jazzmin',

    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    'data',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'admin.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR / 'templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'admin.wsgi.application'


# Database
# https://docs.djangoproject.com/en/5.1/ref/settings/#databases

if DEVELOPMENT_MODE == True:
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.mysql',
            'HOST': os.getenv("DEV_MYSQL_HOST", '127.0.0.1'),
            'PORT': os.getenv("DEV_MYSQL_PORT", '3306'),
            'USER': os.getenv("DEV_MYSQL_USER", 'mysql'),
            'PASSWORD': os.getenv("DEV_MYSQL_PASSWORD", 'mysql'),
            'NAME': os.getenv("SUPABASE_DB_NAME", 'mysql'),
            'OPTIONS': {
                # Helps with mode compatibility
                'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
                'charset': 'utf8mb4',  # Ensure proper charset
            },
        }
    }
elif len(sys.argv) > 0 and sys.argv[1] != 'collectstatic':
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.mysql',
            'HOST': os.getenv("PROD_MYSQL_HOST", '127.0.0.1'),
            'PORT': os.getenv("PROD_MYSQL_PORT", '3306'),
            'USER': os.getenv("PROD_MYSQL_USER", 'mysql'),
            'PASSWORD': os.getenv("PROD_MYSQL_PASSWORD", 'mysql'),
            'NAME': os.getenv("PROD_MYSQL_DATABASE", 'mysql'),
            'OPTIONS': {
                # Helps with mode compatibility
                'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
                'charset': 'utf8mb4',  # Ensure proper charset
            },
        }
    }


# Password validation
# https://docs.djangoproject.com/en/5.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/5.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'America/New_York'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/5.1/howto/static-files/

STATIC_URL = 'static/'
if DEVELOPMENT_MODE is True:
    STATICFILES_DIRS = [
        BASE_DIR / "static"
    ]
else:
    STATIC_ROOT = BASE_DIR / "static"

# Default primary key field type
# https://docs.djangoproject.com/en/5.1/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


# Cookie Settings

SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SECURE = True


JAZZMIN_SETTINGS = {
    "site_title": "Effectus Engage",
    "site_header": "Effectus Engage",
    "site_brand": "Effectus Engage",
    "site_logo": "images/logo.png",
    "login_logo": "images/logo.png",
    "login_logo_dark": "images/logo.png",
    "site_logo_classes": "",
    "site_icon": "images/favicon.ico",
    "welcome_sign": "Welcome to Effectus Engage Admin",
    "copyright": "Effectus Clinical Trial Recruitment",

    "search_model": ["data.profiles", "service.brokers"],

    "topmenu_links": [
        {"name": "Submit IT ticket", "url": "mailto:dev@klikz.us",
            "new_window": True},
        {"name": "Open Frontend", "url": "https://www.effectusctr.com/",
            "new_window": True},
    ],

    "show_sidebar": True,
    "navigation_expanded": True,
    "hide_apps": [],
    "hide_models": [],
    "icons": {
        "auth": "fas fa-users-cog",
        "auth.user": "fas fa-user",
        "auth.Group": "fas fa-users",
        "data.brokers": "fas fa-database",
        "data.profiles": "fa-regular fa-user",
        "service.search": "fas fa-magnifying-glass",
        "service.google": "fa-brands fa-google",
        "service.removal": "fa-regular fa-trash-can",
    },
    "default_icon_parents": "fas fa-chevron-circle-right",
    "default_icon_children": "fas fa-circle",
    "related_modal_active": False,

    "custom_css": "css/custom.css",
    "custom_js": None,
    "use_google_fonts_cdn": True,
    "show_ui_builder": False,
    "changeform_format": "horizontal_tabs",
}

JAZZMIN_UI_TWEAKS = {
    "theme": "simplex",
    "button_classes": {
        "primary": "btn-outline-primary",
        "secondary": "btn-outline-secondary",
        "info": "btn-info",
        "warning": "btn-warning",
        "danger": "btn-danger",
        "success": "btn-success"
    },

}
