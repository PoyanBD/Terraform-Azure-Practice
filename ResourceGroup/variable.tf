variable "base_rg_name" {
  type        = string
  description = "base resource group name"
}


variable "default_location" {
  type        = string
  default     = "Sweden Central"
  description = "Defualt location"
}

variable "test_tag" {
  type        = string
  default     = "test"
  description = "Tag for testing"
}