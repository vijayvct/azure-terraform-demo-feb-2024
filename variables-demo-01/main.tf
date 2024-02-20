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

#Declaring Variables 
variable "region" {
  type = string
  default = "East US"
}

variable "appservicename" {
    type = string
    default = "vijaysappservice2024"
}

variable "appserviceplan" {
  type = string
  default = "vijayappserviceplan"
}

variable "resourcegroup" {
  type = string
  default = "terraform-variables-rg"
}

resource "azurerm_resource_group" "mygrp" {
  name = var.resourcegroup
  location = var.region
}

resource "azurerm_app_service_plan" "appplan" {
  name = var.appserviceplan
  location = azurerm_resource_group.mygrp.location
  resource_group_name = azurerm_resource_group.mygrp.name

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "webapp" {
  name = var.appservicename
  location = azurerm_resource_group.mygrp.location
  resource_group_name = azurerm_resource_group.mygrp.name
  app_service_plan_id = azurerm_app_service_plan.appplan.id
}   

#output variables 
output "appserviceurl" {
  value=azurerm_app_service.webapp.default_site_hostname
}

output "appserviceresourceid" {
  value = azurerm_app_service.webapp.id
}
