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
        proxy_redirect     off;
        proxy_set_header   Host $host;
        proxy_set_header   REMOTE_ADDR $remote_addr;
        proxy_set_header   X-Url-Scheme $scheme;
        proxy_set_header   X-Real-IP $remote_addr;
        proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_pass   http://backend:8000;
    }
}
