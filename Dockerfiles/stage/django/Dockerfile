# pull official base image
FROM python:3.9-slim-buster

LABEL maintainer="bigdeli.ali3@gmail.com"

# set work directory
WORKDIR /usr/src/app

# install apps
RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get -y install build-essential libssl-dev libffi-dev libblas3 libc6 liblapack3 gcc python3-dev python3-pip cython3
RUN apt-get -y install python3-numpy python3-scipy 
RUN apt install -y netcat

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy entrypoint.sh
COPY Dockerfiles/stage/django/entrypoint.sh  .
RUN sed -i 's/\r$//g' /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

# copy project
COPY ./core .

# run entrypoint.sh
ENTRYPOINT [ "/usr/src/app/entrypoint.sh" ]