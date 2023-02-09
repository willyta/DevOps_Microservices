#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=willytimothy01/flaskapp

# Step 2:  
# Authenticate & tag
echo "$DP" | docker login -u "willytimothy01" --password-stdin
docker tag flaskapp $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath