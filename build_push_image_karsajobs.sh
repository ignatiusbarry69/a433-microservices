# build image dari dockerfile pada directory itu
docker build -t item-app:v1 /home/ubuntu/a433-microservices/
# login ke github package dgn user github dan pw token
echo "$DOCKER_PASSWORD" | docker login ghcr.io -u "$DOCKER_USERNAME" --password-stdin
# rubah nama image sesuai online repo
docker tag item-app:v1 ghcr.io/"$DOCKER_USERNAME"/item-app:v1
# push ke online repo
docker push ghcr.io/"$DOCKER_USERNAME"/item-app:v1
# logout github package
docker logout ghcr.io