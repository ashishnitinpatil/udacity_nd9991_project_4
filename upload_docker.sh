#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
username=ashishnitinpatil
dockerpath="$username/udacity_nd9991_project_4"
echo "$username $dockerpath"

# Step 2:  
# Authenticate & tag
docker login -u $username
echo "Docker ID and Image: $dockerpath"
echo "Please enter current version tag"
read version
echo "Tagging image as 'latest' and '$version'"
docker image tag nd991_project_4 $dockerpath:latest
docker image tag nd991_project_4 $dockerpath:$version

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
docker push $dockerpath:$version
