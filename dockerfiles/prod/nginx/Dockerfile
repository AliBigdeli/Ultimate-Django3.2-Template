FROM nginx:1.23.0-alpine

COPY ./config/* /etc/nginx/
COPY ./entrypoint.sh /entrypoint.sh

USER root

RUN apk add --no-cache openssl bash
RUN chmod +x /entrypoint.sh


# COPY ./config/ /etc/nginx/templates/
# COPY ./confing/ /etc/nginx/templates:rw,cached

CMD ["/entrypoint.sh"]