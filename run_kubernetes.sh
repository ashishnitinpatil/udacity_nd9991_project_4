#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
username=ashishnitinpatil
dockerpath="$username/udacity_nd9991_project_4"
echo "$username $dockerpath"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl get nodes
kubectl create deploy nd9991-project-4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deploy/nd9991-project-4 8000:80

