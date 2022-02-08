#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

exec "$@"

python manage.py flush --no-input
python manage.py makemigrations
python manage.py migrate --no-input
python manage.py collectstatic --no-input

# DJANGO_SUPERUSER_USERNAME=admin \
# DJANGO_SUPERUSER_EMAIL=admin@admin.com \
# DJANGO_SUPERUSER_PASSWORD=123 \
# python manage.py createsuperuser --noinput

