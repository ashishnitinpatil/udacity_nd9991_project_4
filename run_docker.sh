#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t nd991_project_4 .

# Step 2: 
# List docker images
docker image ls --filter "reference=nd991_project_4"

# Step 3: 
# Run flask app
docker run --rm -p 8000:80 nd991_project_4
