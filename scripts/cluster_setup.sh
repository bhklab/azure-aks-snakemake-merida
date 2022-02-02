#!/bin/bash

# -- Read in configuration files
source .azure

# -- Configure which Azure resources to use

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
