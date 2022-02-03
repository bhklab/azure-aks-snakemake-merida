#!/bin/bash

# -- Authenticate to Azure
az login

# -- Load configuration files
source .azure

cd tmp

# -- Fetch environment files to the Snakemake job
wget https://snakemake.readthedocs.io/en/stable/executor_tutorial/workflow/snakedir.zip
unzip