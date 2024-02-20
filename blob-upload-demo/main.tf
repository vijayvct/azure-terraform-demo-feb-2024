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
  location = azurerm_resource_group.myrg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  resource_group_name = azurerm_resource_group.myrg.name
  account_kind = "StorageV2"
}

#Create a Container in the storage account
# resource "azurerm_storage_container" "data" {
#     name = "data"
#     storage_account_name = azurerm_storage_account.terraformstorage20242002.name
#     container_access_type = "private"
# }

# #uploading a blob to the container
resource "azurerm_storage_blob" "sample" {
  name = "sample.txt"
  storage_account_name = azurerm_storage_account.terraformstorage20242002.name
  storage_container_name = "data"
  type = "Block"
  source = "sample.txt"

  #depends_on = [ azurerm_storage_container.data ]
}
