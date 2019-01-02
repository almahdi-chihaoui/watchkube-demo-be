#!/bin/bash
kubectl delete -f deployment/
eval "$(minikube docker-env)"
docker rmi almahdi-chihaoui/backend
docker build -t almahdi-chihaoui/backend .
kubectl apply -f deployment/