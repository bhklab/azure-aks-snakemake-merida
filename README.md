# Azure Kubernetes Service (AKS) Cluster for Snakemake Deployment

Repository with code to provision an AKS cluster which can be used to
dynamically scale compute resources for an arbitrary Snakemake pipeline.

## Requirments

### Installing Miniconda

This repo uses conda to simplify dependency management and installation.
To get started with setup you can install miniconda3 using the instructions available here: https://docs.conda.io/en/latest/miniconda.html.

### Setting Up Your Software Environment

The first step to deploying an analysis pipeline is to install the various
software packages it depends on.

All commands should be executed from the top level directory of this repository.

### Python and System Dependencies

Conda can be used to install all Python and most OS system dependencies using:

```
conda env create --file envs/aks-snakemake.yml
```

This will take some time to run as it gathers and installs the correct package versions. The environment it creates should be called `aks-snakemake`.

If it is not automatically activated after installation please run
`conda activate aks-snakemake` before proceeding to the next step.

## Configuration

TODO
## Deployment

Before running the included scripts, you need to login to Azure:

```
az login
```

## References

1. [Auto-scaling Azure Kubernetes cluster without shared filesystem](https://snakemake.readthedocs.io/en/stable/executor_tutorial/azure_aks.html)

2. [Deploy a model to an Azure Kubernetes Service cluster](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-azure-kubernetes-service?tabs=python)