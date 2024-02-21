terraform {
  required_providers {
    azurerm= {
        source = "hashicorp/azurerm"
        version = "3.9.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "myrg" {
  name = "TerraformImportDemo-RG"
  location = "East US"
}

resource "azurerm_storage_account" "mystorage" {
  name                     = "terraformdemo202455"
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}