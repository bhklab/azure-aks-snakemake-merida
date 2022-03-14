#!/bin/bash

# -- Authenticate to Azure
az login


# -- Load configuration files
source .azure
source .aks


# -- Configure Blob storage access for
export AZ_BLOB_ACCOUNT_URL="https://${stgacct}.blob.core.windows.net"
export AZ_BLOB_CREDENTIAL="$stgkey"


# -- Run the pipline
snakemake --kubernetes \
    --default-remote-provider AzBlob \
    --default-remote-prefix $containername \
    --envvars AZ_BLOB_ACCOUNT_URL AZ_BLOB_CREDENTIAL \
    --use-conda \
    --container-image "bhklabbatch.azurecr.io/aks/aks-snakemake-cplex-merida:latest" \
    --jobs 6
