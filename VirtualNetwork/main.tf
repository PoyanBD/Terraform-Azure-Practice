resource "azurerm_virtual_network" "base-vn" {
  name                = "${var.base_vn_name}VM"
  resource_group_name = var.resource_group_name
  location            = var.default_location
  address_space       = [var.vm_address]
}