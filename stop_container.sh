#!/bin/bash
set -e

# Get the container ID of the running container (if any)
containerid=$(docker ps -q)

# Stop and remove the running container (if any)
if [ -n "$containerid" ]; then
  docker stop $containerid
  docker rm -f $containerid
else
  echo "No running container found."
fi
