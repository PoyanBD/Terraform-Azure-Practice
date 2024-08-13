variable "base_sg_name" {
  type        = string
  description = "Security group name"
}

variable "default_location" {
  type        = string
  default     = "Sweden Central"
  description = "Defualt location"
}

variable "resource_group_name" {
  type        = string
  description = "Name of resource group used in security group"
}

