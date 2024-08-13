resource "azurerm_subnet" "base-sn" {
  name                 = "${var.base_sn_name}subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_address]
}