#!/bin/bash
gcloud auth configure-docker us-central1-docker.pkg.dev --quiet
docker pull us-central1-docker.pkg.dev/$DEVSHELL_PROJECT_ID/rstudio/rstudio:latest
docker run -d -p 8080:8787 us-central1-docker.pkg.dev/$DEVSHELL_PROJECT_ID/rstudio/rstudio 
echo https://8080-$WEB_HOST