FROM nginx:alpine

RUN mkdir -p /etc/letsencrypt
RUN mkdir -p /var/www/certbot

COPY dockerfiles/prod/nginx/conf.d/ /etc/nginx/conf.d/