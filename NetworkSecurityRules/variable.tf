variable "base_nsr_name" {
  type        = string
  description = "Network security rule name"
}

variable "priority" {
  type        = number
  default     = 100
  description = "Priority of this rule over other rules"
}

variable "direction" {
  type        = string
  default     = "Inbound"
  description = "Direction of the rule - Inbound/Outbound"
}

variable "access" {
  type        = string
  default     = "Allow"
  description = "Does the rule Allow or Deny access"
}

variable "protocol" {
  type        = string
  default     = "*"
  description = "Protocul used in rule"
}

variable "source_port_range" {
  type        = string
  default     = "*"
  description = "Identifies the process that sent the data"
}

variable "destination_port_range" {
  type        = string
  default     = "*"
  description = "Identifies the process that is to receive the data"
}

variable "source_address_prefix" {
  type        = string
  default     = "*"
  description = "CIDR or source IP range"
}

variable "destination_address_prefix" {
  type        = string
  default     = "*"
  description = "CIDR or destination IP range"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group used for rule"
}

variable "network_security_group_name" {
  type        = string
  description = "Name of the security group used for rule"
}
