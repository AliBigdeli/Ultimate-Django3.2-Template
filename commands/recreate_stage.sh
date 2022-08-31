docker compose -f ./docker-compose-stage.yml down
docker volume prune -f
docker rmi $(docker images --format '{{.Repository}}' | grep '$PROJECT_NAME')
git pull 
docker compose -f docker-compose-stage.yml up --build -d
