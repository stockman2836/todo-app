#!/bin/bash

# Create Docker network
echo "Creating Docker network..."
docker network create todo-app-network || true

# Create Docker volume for MongoDB
echo "Creating Docker volume for MongoDB..."
docker volume create mongo-data || true

# Build Docker images
echo "Building Docker images..."
docker-compose build

echo "Todo App preparation completed successfully!"