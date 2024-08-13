variable "base_ni_name" {
  type        = string
  description = "Network interface name"
}

variable "default_location" {
  type        = string
  default     = "Sweden Central"
  description = "Defualt location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group used for network interface"
}

variable "ip_conf_name" {
  type        = string
  default     = "internal"
  description = "Network interface IP name"
}

variable "subnet_id" {
  type        = string
  description = "Subnet used for network interface"
}

variable "private_ip_address_allocation" {
  type        = string
  default     = "Dynamic"
  description = "Method of private ip allocation for network interface - Dynamic/Static"
}

variable "public_ip_address_id" {
  type        = string
  description = "Public ip used for network interface"
}
