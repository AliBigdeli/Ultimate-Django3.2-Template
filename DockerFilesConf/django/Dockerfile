FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements-prod.txt /app/
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements-prod.txt
COPY ./core/ /app/
COPY entrypoint.sh /
ENTRYPOINT [ "sh","/entrypoint.sh" ]