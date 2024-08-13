resource "azurerm_resource_group" "base-rg" {
  name     = "${var.base_rg_name}RG"
  location = var.default_location
  tags = {
    enviroment = var.test_tag
  }
}
