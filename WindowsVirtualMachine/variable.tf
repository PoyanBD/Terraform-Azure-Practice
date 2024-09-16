variable "base_wvm_name" {
  type        = string
  description = "description"
}

variable "resource_group_name" {
  type        = string
  description = "description"
}

variable "default_location" {
  type        = string
  default     = "Sweden Central"
  description = "Defualt location"
}

variable "size" {
  type        = string
  default     = "Standard_F2"
  description = "description"
}

variable "admin_username" {
  type        = string
  default     = "admin"
  description = "description"
}

variable admin_password {
  type        = string
  default     = "p0O("
  description = "description"
}

variable "network_interface_ids" {
  type        = string
  description = "description"
}


