# pull official base image
FROM python:3.8-slim-buster

LABEL maintainer="bigdeli.ali3@gmail.com"

# set work directory
WORKDIR /usr/src/app


# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt


# copy project
COPY ./core .

CMD python3 manage.py check_database && \
    python3 manage.py makemigrations --noinput && \
    python3 manage.py migrate --noinput && \
    python3 manage.py collectstatic --noinput && \
    gunicorn --bind 0.0.0.0:8000 core.wsgi:application