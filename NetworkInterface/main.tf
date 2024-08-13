resource "azurerm_network_interface" "base-ni" {
  name                = "${var.base_ni_name}ni"
  location            = var.default_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ip_conf_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id          = var.public_ip_address_id
  }
}