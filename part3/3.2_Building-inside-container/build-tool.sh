#!/bin/bash

# Login to Docker
echo $DOCKERHUB_TOKEN | docker login -u $DOCKERHUB_USERNAME --password-stdin

# Clone repository
git clone $URL downloaded-project

# Build image
docker build ./downloaded-project -t $DOCKERHUB_USERNAME/downloaded-project

# Push to Docker Hub
docker push $DOCKERHUB_USERNAME/downloaded-project:latest