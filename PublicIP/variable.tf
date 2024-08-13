variable "base_pip_name" {
  type        = string
  description = "Public IP name"
}

variable "default_location" {
  type        = string
  default     = "Sweden Central"
  description = "Defualt location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group used for public IP"
}

variable "allocation_method" {
  type        = string
  default     = "Dynamic"
  description = "Method IP is allocated - Dynamic/Static"
}


