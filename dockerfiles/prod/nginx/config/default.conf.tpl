server {
    listen 80;

    server_name ${DOMAIN} www.${DOMAIN};

    # server logs
    access_log  /var/log/nginx/access_log.log;
    error_log /var/log/nginx/error_log.log;


    location /.well-known/acme-challenge/ {
        root /var/www/certbot;
    }


    location / {
        return 301 https://$host$request_uri;
    }
}
