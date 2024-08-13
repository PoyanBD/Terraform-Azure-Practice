resource "azurerm_network_security_group" "base-sg" {
  name                = "${var.base_sg_name}SG"
  location            = var.default_location
  resource_group_name = var.resource_group_name
}