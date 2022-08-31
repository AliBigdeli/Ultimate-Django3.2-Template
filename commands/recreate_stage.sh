docker compose -f ./docker-compose-stage.yml down
docker volume prune -f
docker rmi $(docker images --format '{{.Repository}}' | grep 'ultimate')
git pull 
docker compose -f docker-compose-stage.yml up --build -d