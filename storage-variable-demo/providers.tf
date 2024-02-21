#Terraform Block 
terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm={
        source="hashicorp/azurerm"
        version = "3.9.0"
    }

    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

provider "random" {
  
}