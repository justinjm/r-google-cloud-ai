#!/bin/bash

# stop all running containers 
docker ps -aq | xargs docker stop | xargs docker rm

# remove image 
docker rmi -f us-central1-docker.pkg.dev/$DEVSHELL_PROJECT_ID/rstudio/rstudio:latest

