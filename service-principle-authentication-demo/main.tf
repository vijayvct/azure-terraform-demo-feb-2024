terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = ""
  tenant_id = ""
  client_secret = ""
  client_id = ""

  features {
    
  }
}

resource "azurerm_resource_group" "mydemoresourcegroup" {
  name = "myterraform-rg"
  location = "East US"
}