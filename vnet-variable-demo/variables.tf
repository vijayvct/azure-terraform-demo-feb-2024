locals {
  prefix = "ct"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "nsg" {
  type = string
}

variable "vnet" {
  type = string
}
