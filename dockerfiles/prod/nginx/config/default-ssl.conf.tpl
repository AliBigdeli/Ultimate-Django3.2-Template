
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
        return 301 https://${DOMAIN}$request_uri;
    }
}

 

server {
	listen 443 ssl;

    # server names
    server_name ${DOMAIN};

    # slow connections timeout
    # client_body_timeout 5s;
    # client_header_timeout 5s;

    # rate limiting
    # limit_req zone=mylimit burst=20 delay=20;
    # limit_req_status 429;

    # Let's Encrypt parameters
    ssl_certificate     /etc/letsencrypt/live/${DOMAIN}/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/${DOMAIN}/privkey.pem;
    # keepalive_timeout   70;
    
    # ssl configs which has been given from cert bot
    ssl_session_cache shared:le_nginx_SSL:10m;
    ssl_session_timeout 1440m;
    ssl_session_tickets off;
    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_prefer_server_ciphers off;
    ssl_ciphers "ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384";
    ssl_dhparam /vol/proxy/ssl-dhparams.pem;

    # charset config
    charset     utf-8;

    # max upload size
    client_max_body_size 10M;   # adjust to taste

	server_tokens off;

    # Secruity headers
    add_header Strict-Transport-Security "max-age=31536000; includeSubDomains; preload";
    add_header Content-Security-Policy "default-src 'self'; img-src * data:; font-src 'self' data:; frame-src 'self' https://www.google.com/; connect-src 'self' ;style-src 'self' https://cdn.jsdelivr.net ;script-src 'self' https://cdn.jsdelivr.net ; object-src 'self' ;frame-ancestors 'self'; form-action 'self'; base-uri 'self';";
    add_header X-XSS-Protection "1; mode=block";
    add_header X-Frame-Options "SAMEORIGIN";
    add_header X-Content-Type-Options nosniff;
    add_header Referrer-Policy "strict-origin";
    add_header Permissions-Policy "geolocation=(),midi=(),sync-xhr=(),microphone=(),camera=(),magnetometer=(),gyroscope=(),fullscreen=(self),payment=()";
    add_header Set-Cookie "Path=/; HttpOnly; Secure;  SameSite=strict;";
    add_header Cache-Control "private, no-cache, no-store, must-revalidate, max-age=0" always;


    # static files directory
    location /static/ {
      autoindex on;
      alias /home/app/static/;
    }
    
    # media files directory
    location /media/ {
      autoindex on;
      alias /home/app/media/;
    }

    location / {
        # proxy_pass_request_headers on;
        # proxy_buffering on;
        # proxy_buffers 8 24k;
        # proxy_buffer_size 2k;  
        proxy_redirect      off;
        proxy_set_header    Host                $host;
        proxy_set_header    REMOTE_ADDR         $remote_addr;
        proxy_set_header    X-Url-Scheme        $scheme;
        proxy_set_header    X-Real-IP           $remote_addr;
        proxy_set_header    X-Forwarded-For     $proxy_add_x_forwarded_for;
        proxy_set_header    X-Forwarded-Proto   https;
        proxy_set_header    User-Agent          $http_user_agent;
        proxy_pass   http://backend:8000;
    }
}

