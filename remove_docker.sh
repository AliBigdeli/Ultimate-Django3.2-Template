docker compose -f ./docker-compose-prod.yml down
docker volume prune -f
docker rmi $(docker images --format '{{.Repository}}' | grep 'ultimate')
