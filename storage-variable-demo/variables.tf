variable "resource_group" {
  type = string
  default = "variables-demo-rg"
  description = "Name of the resource group"
}

variable "resource_group_location" {
  type = string
  default = "East US"
  description = "Location for the resource group"
}

variable "storage_account_name" {
  type = string
  default = "tfstorage"
}

variable "storage_regions" {
  type = list(string)
  default = [ "East US", "West US", "Central US" ]
}

variable "storage_replication" {
  type = list(string)
  default = [ "LRS","GRS","ZRS"]
}