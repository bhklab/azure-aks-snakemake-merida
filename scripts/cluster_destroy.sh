#!/bin/bash

az login

source .azure
source .aks

az aks delete --name $clustername --resource-group $resgroup