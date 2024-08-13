variable "base_vn_name" {
  type        = string
  description = "Base Virtual network name"
}


variable "default_location" {
  type        = string
  default     = "Sweden Central"
  description = "Defualt location"
}

variable "resource_group_name" {
  type        = string
  description = "Name of resource group"
}

variable "vm_address" {
  type        = string
  description = "description"
}
