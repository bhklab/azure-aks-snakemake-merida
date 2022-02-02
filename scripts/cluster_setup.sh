#!/bin/bash

## TODO:: move configuration into a YML file and read from there
## TODO:: how to manage secrets?

# -- Configure which Azure resources to use
region=canadacentral
resgroup=rgUHN_Research_BHKLab_Batch
stgacct=rguhnresearchbhklabbatch
# Get the first key for the specified storage account
stgkey=$(
    az storage account keys list \
        -g $resgroup \
        -n $stgacct \
        --query "[0].value"
)

containername=snakemake-test

# -- Create a Blob storage container
az storage container create \
    --resource-group $resgroup \
    --account-name $stgacct \
    --account-key $stgkey \
    --name $containername

# -- Configure AKS cluster
clustername=aks-snakemake


# -- Create AKS cluster
