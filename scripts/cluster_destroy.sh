#!/bin/bash

az login

source .azure

az aks delete --name akscluster --resource-group $resgroup