# build image dari dockerfile pada directory itu
docker build -t ghcr.io/"$DOCKER_USERNAME"/karsajobs-ui:latest .
# login ke github package dgn user github dan pw token
echo "$DOCKER_PASSWORD" | docker login ghcr.io -u "$DOCKER_USERNAME" --password-stdin
# push ke online repo
docker push ghcr.io/"$DOCKER_USERNAME"/karsajobs-ui:latest
# logout github package
docker logout ghcr.io
