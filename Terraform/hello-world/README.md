# Terraform 'Hello World' example
This folder contains a *Hello World* example of a Terraform configuration in Azure. The configuration deploys static website in Azure. 

## Pre-requisites
* Terraform must be [installed](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/azure-get-started) on your local computer
* You must have an active Azure account
* Azure CLI Tool must be installed on your local computer


## Quick Start
Open your favorit terminal for these next steps. 

Verify that you have Terraform correctly installed on your local computer by running ```terraform -version```. If you get an error, verify your Terraform installation or install Terraform by following [this tutorial](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/azure-get-started).

Next, verify that Azure CLI is installed correctly by running ```az version```. Again, if you get an error, verify your Azure CLI installation or install Azure CLI again by following [this tutorial](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).

Now it is time to authenticate with to your active Azure account using Azure CLI. Terraform must authenticate to Azure in order to provision infrastructure. Let's login by running ```az login``` in your terminal to setup permission locally.

Finally we can create our Terraform configuration. Create a file called *main.tf* and write your Terraform configuration, as desired. To deploy the *hello-world* code in this folder, run the following Terraform commands:

```
terraform init
terraform fmt
terraform apply
```

And when you are done with the *hello world* greeting, be sure to clean up:

```
terraform destroy
```
