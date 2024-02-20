#Azure Provider Block
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
}

provider "azurerm" {
    features {
      
    }
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "terraformdemo-rg"
  location = "Central US"
}

resource "azurerm_resource_group" "myresourcegroup1" {
  name="terraformtest-rg"
  location = "West US"
}