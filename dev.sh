#!/bin/bash

echo "Building Spring Boot application..."
./gradlew build

echo "Building Docker image..."
docker build -t dev .

echo "Starting Docker container..."
docker rm -f dev || true && docker run -it --name dev -p 80:8080 dev

echo "Application started!"
