FROM python:3.8-slim-buster

LABEL maintainer="bigdeli.ali3@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY ./core/ /app/

COPY compose/django/entrypoint.sh /
ENTRYPOINT [ "sh","/entrypoint.sh" ]