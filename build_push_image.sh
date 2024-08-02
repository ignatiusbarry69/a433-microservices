DOCKER_USERNAME="bawwrrryyyy"
DOCKER_PASSWORD="vE},cah6B2_=BC5a"
docker build -t item-app:v1 .
docker images
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag item-app:v1 "$DOCKER_USERNAME"/item-app:v1
docker push "$DOCKER_USERNAME"/item-app:v1
docker logout