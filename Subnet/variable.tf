variable "base_sn_name" {
  type        = string
  description = "Base name for subnet"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group used in subnet"
}


variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network used in subnet"
}

variable "subnet_address" {
  type        = string
  description = "address prefixes for subnet"
}

