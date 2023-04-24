#!/bin/bash

# Définition des variables d'environnement
DOCKER_USERNAME=rayger10
DOCKER_PASSWORD=Rayanejr10

# Connexion à Docker Hub
docker login --username $DOCKER_USERNAME --password $DOCKER_PASSWORD

# Tag de l'image avec le nom de votre compte Docker Hub
docker image tag udagram-api-feed:latest rayger10/udagram-api-feed:V1
docker image tag udagram-api-user:latest rayger10/udagram-api-user:V1
docker image tag udagram-frontend:latest rayger10/udagram-frontend:V1
docker image tag udagram-reverseproxy:latest rayger10/udagram-reverseproxy:V1

# Push de l'image taggée vers Docker Hub
docker image push rayger10/udagram-api-feed:V1
docker image push rayger10/udagram-api-user:V1
docker image push rayger10/udagram-frontend:V1
docker image push rayger10/udagram-reverseproxy:V1
