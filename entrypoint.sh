#!/bin/sh

python manage.py makemigrations
python manage.py migrate --no-input
python manage.py collectstatic --no-input

DJANGO_SUPERUSER_USERNAME=admin \
DJANGO_SUPERUSER_EMAIL=admin@admin.com \
DJANGO_SUPERUSER_PASSWORD=123 \
python manage.py createsuperuser --noinput

gunicorn core.wsgi:application --bind 0.0.0.0:8000