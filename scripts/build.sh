#!/bin/bash
source ../deploy-envs.sh



# Build process

echo "Starting to build docker image $IMAGE_NAME"

docker build -t $IMAGE_NAME ../

echo "Starting to build docker image $IMAGE_NAME"

docker tag $IMAGE_NAME $AWS_ECS_REPO_DOMAIN/$IMAGE_NAME:$IMAGE_VERSION

echo "Labeled docker image $IMAGE_NAME"