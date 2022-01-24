# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These parameters must be supplied when consuming this module
# ---------------------------------------------------------------------------------------------------------------------

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
}

variable "vnet_name" {
  description = "A common name prefix used in resource names to ensure uniqueness across a project."
  type        = string
}

variable "address_space" {
  description = "The list of address spaces used by the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_names" {
  description = "A list of public subnets inside the virtual network."
  type        = list(string)
  default     = ["subnet1"]
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults
# ---------------------------------------------------------------------------------------------------------------------

variable "dns_servers" {
  description = "List of IP addresses of DNS servers."
  type        = list(string)
  default     = []
}