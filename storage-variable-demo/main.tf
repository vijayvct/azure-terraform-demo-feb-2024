resource "random_id" "storage_id" {
  byte_length = 2
}

resource "azurerm_resource_group" "myrg" {
  name="${local.prefix}-${var.resource_group}"
  location = var.resource_group_location
}

resource "azurerm_storage_account" "demostorage" {
  name = "${local.prefix}${var.storage_account_name}${random_id.storage_id.dec}"
  resource_group_name = azurerm_resource_group.myrg.name
  location = var.storage_regions[0]
  account_tier = "Standard"
  account_replication_type = var.storage_replication[0]

  tags = local.common_tags
}