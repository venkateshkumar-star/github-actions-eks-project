#!/bin/bash

IMAGE_NAME=flask-app

echo "Building Docker Image..."

docker build -t ${IMAGE_NAME}:latest ./app

echo "Build Completed"
