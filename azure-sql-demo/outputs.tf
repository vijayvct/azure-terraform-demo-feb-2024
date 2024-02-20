output "server_username" {
  value = azurerm_mssql_server.example.administrator_login
}

output "server_password" {
  value = azurerm_mssql_server.example.administrator_login_password
  sensitive = true
}