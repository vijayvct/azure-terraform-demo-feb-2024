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
  subscription_id = "d257be94-af42-44f3-8210-e0dddd2babce"
  tenant_id = "e35c7dbb-8668-4871-9198-6e577cc4af23"
  client_secret = "fru8Q~ChEbpA0-sWVToayeLQSAdY7skLrDuQOdwo"
  client_id = "e3629765-d40e-44b7-9510-be1b7a718efb"

  features {
    
  }
}

resource "azurerm_resource_group" "mydemoresourcegroup" {
  name = "myterraform-rg"
  location = "East US"
}