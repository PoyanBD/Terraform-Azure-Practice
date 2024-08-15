resource "azurerm_mssql_server" "base-ss" {
  name                         = "${lower(var.base_ss_name)}sqls"
  resource_group_name = var.resource_group_name
  location                     = var.default_location
  version                      = var.ss_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}