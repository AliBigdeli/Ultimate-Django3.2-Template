#!/bin/sh
set -e
docker compose -f docker-compose-prod.yml run --rm certbot certbot renew
