# Azure Kubernetes Service (AKS) Cluster for Snakemake Deployment

Repository with code to provision an AKS cluster which can be used to
dynamically scale compute resources for an arbitrary Snakemake pipeline.

## Setup

### Install `azure-cli`

See [How to install the Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) for installation instructions on your platform.

To install for Ubuntu via apt run:

```
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

## References

1. [Auto-scaling Azure Kubernetes cluster without shared filesystem](https://snakemake.readthedocs.io/en/stable/executor_tutorial/azure_aks.html)

2. [Deploy a model to an Azure Kubernetes Service cluster](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-azure-kubernetes-service?tabs=python)