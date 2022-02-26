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

#Create Storage account
resource "azurerm_storage_account" "storage_account" {
  name                     = "iacstaticwebsite0001"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  allow_blob_public_access = true
  static_website {
    index_document = "index.html"
  }
}

# resource "azurerm_storage_container" "static_web_container" {
#   # name                  = azurerm_storage_container.static_web_container.name
#   name                  = "$web"
#   storage_account_name  = azurerm_storage_account.storage_account.name
#   container_access_type = "blob"
# }

#Add index.html to blob storage
resource "azurerm_storage_blob" "static_web_blob" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type           = "Block"
  content_type   = "text/html"
  source_content = "<h1>This is static content is created from the Terraform configuration.</h1><br><h1>Tord Langedal Ness</h1>"
}