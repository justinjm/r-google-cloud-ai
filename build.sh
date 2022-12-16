PROJECT_ID = $DEVSHELL_PROJECT_ID

echo $DEVSHELL_PROJECT_ID

# #enable APIS 
# gcloud services enable artifactregistry.googleapis.com
# gcloud services enable cloudbuild.googleapis.com

# REGION = "us-central1" 
# PRIVATE_REPO = "rstudio"

# gcloud artifacts repositories create $PRIVATE_REPO --repository-format=docker \
#     --location=$REGION \
#     --description="Docker repository for RStudio"

# gcloud auth configure-docker $REGION-docker.pkg.dev --quiet

# IMAGE_NAME = "rstudio"
# IMAGE_TAG = "latest" 
# IMAGE_URI = f"{REGION}-docker.pkg.dev/{PROJECT_ID}/{PRIVATE_REPO}/{IMAGE_NAME}:{IMAGE_TAG}"

# gcloud builds submit ./Docker --region=$REGION --tag=$IMAGE_URI --timeout=1h