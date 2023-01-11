# R on Google Cloud AI Platform

## Quick start - Cloud Shell 

**Required:** please see required setup steps detailed in `docs/setup_notebook.ipynb`

To run RStudio on [Cloud Shell](https://cloud.google.com/shell/docs/using-cloud-shell) and if you've already completed the steps in`setup_notebook.ipynb`:

1. open [Google Cloud Console](https://console.cloud.google.com/home/dashboard) 
2. click  cloud shell terminal window 
3. Run the following command (to download this repo and run script)

```sh
git clone -b test-workbench https://github.com/justinjm/r-google-cloud-ai &&
    cd r-google-cloud-ai/ && 
    sh 02_run_rstudio.sh 
```

## Setup

See `docs/setup_notebook.ipynb` for setup instructions or run `01_build.sh` (TODO)

## Acknowledgements 

Original author of source code for Docker image and deployment [htappen/r-google-cloud-ai](https://github.com/htappen/r-google-cloud-ai)
