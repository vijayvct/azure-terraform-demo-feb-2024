terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "3.9.0"
    }
  }

   backend "azurerm" {
    resource_group_name = "terraformstate-rg"
    storage_account_name = "terraformstate2012457"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "myrg" {
  name="Remote-RG"
  location = "East US"
}

resource "azurerm_storage_account" "storage1" {
  name = "ctstorage202312054"
  location = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_account" "storage2" {
  name = "ctstorage202413084"
  location = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}