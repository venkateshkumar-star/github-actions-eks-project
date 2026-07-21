#!/bin/bash

ACCOUNT_ID=$1
REGION=$2
REPOSITORY=$3

IMAGE_TAG=$(git rev-parse --short HEAD)

docker tag flask-app:latest \
${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${REPOSITORY}:${IMAGE_TAG}

docker push \
${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${REPOSITORY}:${IMAGE_TAG}
