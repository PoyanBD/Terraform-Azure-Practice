output "nsg_name_out" {
  value = azurerm_network_security_group.base-sg.name
}

output "nsg_id_out" {
  value = azurerm_network_security_group.base-sg.id
}