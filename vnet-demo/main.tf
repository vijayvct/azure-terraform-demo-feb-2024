terraform {
  required_providers {
    azurerm={
        source  = "hashicorp/azurerm"
        version = "3.9.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

#Resource Group for Virtual Network
resource "azurerm_resource_group" "mygrp" {
  name= "VNet-RG"
  location = "Central US"
}

#Network Security Group
# resource "azurerm_network_security_group" "my-nsg" {
#   name = "my-security-group"
#   location = azurerm_resource_group.mygrp.location
#   resource_group_name = azurerm_resource_group.mygrp.name
# }

#Virtual Network 
resource "azurerm_virtual_network" "my-vnet" {
  name = "my-vnet"
  location = azurerm_resource_group.mygrp.location
  resource_group_name = azurerm_resource_group.mygrp.name
  address_space = ["50.0.0.0/16"]
  dns_servers = ["50.0.0.4","50.0.0.5"]

  subnet  {
    name = "subnet1"
    address_prefix = "50.0.1.0/24"
  }

  subnet  {
    name = "subnet2"
    address_prefix = "50.0.2.0/24"
    #security_group = azurerm_network_security_group.my-nsg.id
  }

  tags = {
    enviornment="Production"
  }
}
