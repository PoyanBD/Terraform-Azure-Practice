resource "azurerm_public_ip" "base-pip" {
  name                = "${var.base_pip_name}pip"
  resource_group_name = var.resource_group_name
  location            = var.default_location
  allocation_method   = var.allocation_method
}