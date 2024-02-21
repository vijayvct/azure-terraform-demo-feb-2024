resource "random_id" "serever_id" {
  byte_length = 2
}

resource "azurerm_resource_group" "myrg" {
  name = var.resourcegroup
  location = var.region
}

resource "azurerm_sql_server" "my-db-server" {
  name ="${var.servername}${random_id.serever_id.dec}"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  version = "12.0"
  administrator_login = var.adminname
  administrator_login_password = var.password
}

resource "azurerm_sql_database" "my-db" {
  name = var.dbname
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  server_name = azurerm_sql_server.my-db-server.name

  depends_on = [ azurerm_sql_server.my-db-server ]
}

resource "azurerm_sql_firewall_rule" "my-db-server-rule" {
  name= "my-db-server-firewall-rule"
  resource_group_name = azurerm_resource_group.myrg.name
  server_name = azurerm_sql_server.my-db-server.name
  start_ip_address = "0.0.0.0"
  end_ip_address = "255.255.255.255"
}