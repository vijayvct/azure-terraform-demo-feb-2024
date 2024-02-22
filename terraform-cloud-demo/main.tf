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
  subscription_id = "d257be94-af42-44f3-8210-e0dddd2babce"
  tenant_id = "e35c7dbb-8668-4871-9198-6e577cc4af23"
  client_secret = "FAg8Q~Lyd32kBZR51yY08E_Ow0oXW1hla.P_eddn"
  client_id = "922f8eaa-1124-46ed-95f0-a57b40c01a3a"
}

resource "azurerm_resource_group" "myrg" {
  name = "TerraformCloudDemo-RG"
  location = "East US"
}