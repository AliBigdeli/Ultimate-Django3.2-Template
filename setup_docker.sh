docker compose -f docker-compose-prod.yml  run --rm certbot /opt/certify-init.sh
docker compose -f docker-compose-prod.yml down
docker compose -f docker-compose-prod.yml up -d
