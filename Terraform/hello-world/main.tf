# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "IaC"
  location = "norwayeast"
}

#Create Storage account 01
resource "azurerm_storage_account" "iac_sa" {
  name                     = "iacstaticwebsite0001"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  allow_blob_public_access = true
}

resource "azurerm_storage_container" "static_web_container" {
  name                  = "staticwebsite"
  storage_account_name  = azurerm_storage_account.iac_sa.name
  container_access_type = "blob"
}

#Add index.html to blob storage
resource "azurerm_storage_blob" "static_web_blob_01" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.iac_sa.name
  storage_container_name = azurerm_storage_container.static_web_container.name
  type           = "Block"
  content_type   = "text/html"
  source_content = "<h1>Hello World, again</h1><br><br><h3>This static website content is created from Terraform.</h3><br><h3>Tord Langedal Ness</h3>"
}