# R on Google Cloud AI Platform

## Quick start - Cloud Shell 

**Required:** please see required setup steps detailed in [`01_build.ipynb`](01_build.ipynb)

To run RStudio on [Cloud Shell](https://cloud.google.com/shell/docs/using-cloud-shell) and if you've already completed the setup steps in [`01_build.ipynb`](01_build.ipynb):

1. open [Google Cloud Console](https://console.cloud.google.com/home/dashboard) 
2. click cloud shell terminal window 
3. Run the following command (to download this repo and run script)

```sh
git clone -b test-workbench https://github.com/justinjm/r-google-cloud-ai &&
    cd r-google-cloud-ai/ && 
    sh 02_run_rstudio.sh 
```

## Setup

See [`01_build.ipynb`](01_build.ipynb) for setup instructions or run [`01_build.sh`](01_build.sh)

## Deployment 

See [`01_build.ipynb`](01_build.ipynb)  or run [`02_run_rstudio.sh`](02_run_rstudio.sh)

## Acknowledgements 

Original author of source code for Docker image and deployment [htappen/r-google-cloud-ai](https://github.com/htappen/r-google-cloud-ai)

See [`docs`](docs) for orginal documentation and overview. 