terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "3.9.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

#Resource Group for the storage account
resource "azurerm_resource_group" "myrg" {
  name ="terraform-storage-rg"
  location = "East US"
}

#Storage Account
resource "azurerm_storage_account" "terraformstorage20242002" {
  name = "terraformstorage20242002"
  location = "East US"
  account_tier = "Standard"
  account_replication_type = "GRS"
  resource_group_name = azurerm_resource_group.myrg.name
  account_kind = "StorageV2"
}