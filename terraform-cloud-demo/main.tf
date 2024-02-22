terraform {
  cloud {
    organization = "TestOrganization2024"

    workspaces {
      name = "TestWorkspace"
    }
  }

  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "3.92.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = ""
  tenant_id = ""
  client_secret = ""
  client_id = ""
}

resource "azurerm_resource_group" "myrg" {
  name = "TerraformCloudDemo-RG"
  location = "East US"
}