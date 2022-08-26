server {
    listen 80;

    server_name ${DOMAIN} www.${DOMAIN};

    # server logs
    access_log  /var/log/nginx/access_log.log;
    error_log /var/log/nginx/error_log.log;


    location /.well-known/acme-challenge/ {
        root /vol/www/;
    }


    location / {        
        proxy_redirect     off;
        proxy_pass   http://backend:8000;
    }
}
