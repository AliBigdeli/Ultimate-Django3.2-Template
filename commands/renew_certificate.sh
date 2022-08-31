#!/bin/sh
set -e
cd ..
docker compose -f docker-compose-prod.yml run --rm certbot certbot renew