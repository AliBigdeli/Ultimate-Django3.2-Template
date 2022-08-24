FROM nginx:alpine

RUN mkdir -p /etc/ssl/

COPY dockerfiles/prod/nginx/conf.d/ /etc/nginx/conf.d/
COPY dockerfiles/prod/nginx/ssl/ /etc/ssl/