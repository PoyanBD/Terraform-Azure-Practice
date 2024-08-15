variable "base_ss_name" {
  type        = string
  description = "Sql server name"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group this SQL server belongs to"
}

variable "default_location" {
  type        = string
  default     = "Sweden Central"
  description = "Defualt location"
}

variable "ss_version" {
  type        = string
  default     = "12.0"
  description = "Version of the SQL server"
}

variable "administrator_login" {
  type        = string
  default     = "admin"
  description = "Administrator login credentials"
}

variable "administrator_login_password" {
  type        = string
  default     = "p0O("
  description = "Administrator login Password"
}

