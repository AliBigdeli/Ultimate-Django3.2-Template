docker compose -f ./docker-compose-prod.yml down
docker volume prune -f
docker rmi $(docker images --format '{{.Repository}}' | grep '$PROJECT_NAME')
git pull 
docker compose -f docker-compose-prod.yml  run --rm certbot /opt/certify-init.sh
docker compose -f docker-compose-prod.yml down
docker compose -f docker-compose-prod.yml up -d