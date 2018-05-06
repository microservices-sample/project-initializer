echo "Stopping all containers"
docker-compose stop

echo "Removing all containers"
docker rm $(docker ps -a -q)

echo "Remove dangling images"
docker rmi $(docker images -f "dangling=true" -q)

echo "Remove dangling volumes"
docker volume rm $(docker volume ls -qf dangling=true)
