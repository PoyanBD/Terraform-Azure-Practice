variable "base_sdb_name" {
  type        = string
  description = "Sql database name"
}

variable "server_id" {
  type        = string
  description = "ID of the server connecting this database"
}

variable "collation" {
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
  description = "Specifies the collation of the database"
}

variable "license_type" {
  type        = string
  default     = "LicenseIncluded"
  description = "Specifies the license type applied to this database"
}

variable "max_size_gb" {
  type        = number
  default     = 4
  description = "The max size of the database in gigabytes"
}

variable "read_scale" {
  type        = bool
  default     = true
  description = "If enabled, connections that have application intent set to readonly"
}

variable "sku_name" {
  type        = string
  default     = "S0"
  description = "Specifies the name of the sample schema to apply when creating this database"
}

variable "zone_redundant" {
  type        = bool
  default     = true
  description = "Whether or not this database is zone redundant"
}

variable "enclave_type" {
  type        = string
  default     = "VBS"
  description = "Specifies the type of enclave to be used by the elastic pool"
}

