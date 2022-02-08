FROM python:3.9-slim-buster

LABEL maintainer="bigdeli.ali3@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR /app

#RUN mkdir /static
#RUN mkdir /media

COPY requirements.txt /app/

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY ./core/ /app/

COPY Dockerfiles/prod/django/entrypoint.sh /

RUN chmod +x  /entrypoint.sh

ENTRYPOINT [ "sh","/entrypoint.sh" ]