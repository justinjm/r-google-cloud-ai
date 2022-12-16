#!/bin/bash

PROJECT_ID=$DEVSHELL_PROJECT_ID
echo "PROJECT ID:" $DEVSHELL_PROJECT_ID

#enable APIS 
gcloud services enable artifactregistry.googleapis.com
gcloud services enable cloudbuild.googleapis.com

# create docker repository in artifact registry 
REGION="us-central1" 
PRIVATE_REPO="rstudio"
echo "REGION:" $REGION
echo "PRIVATE_REPO:" $PRIVATE_REPO

gcloud artifacts repositories create $PRIVATE_REPO --repository-format=docker \
    --location=$REGION \
    --description="Docker repository for RStudio"

# authenticate with the repository 
gcloud auth configure-docker $REGION-docker.pkg.dev --quiet

# build docker container in cloud build 
IMAGE_NAME="rstudio"
IMAGE_TAG="latest" 
printf -v IMAGE_URI "%s-docker.pkg.dev/%s/%s/%s:%s" "$REGION" "$PROJECT_ID" "$PRIVATE_REPO" "$IMAGE_NAME" "$IMAGE_TAG"
echo "IMAGE_URI:" $IMAGE_URI

gcloud builds submit ./Docker --region=$REGION --tag=$IMAGE_URI --timeout=1h