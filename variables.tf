
variable resource_group {
  type        = "string"
  description = "The name of the resource group in which to create the resources."
  nullable    = false
}
variable prefix {
  type        = "string"
  description = "Name resources prefixed by this value"
  nullable    = false
}
variable location {
  type        = "string"
  description = "Azure location/region where resources are to be created"
  nullable    = false
}
variable virtual_network_name {
  type        = "string"
  description = "The name for the virtual network."
  default     = "vnet"
}
variable address_space {
  type        = "string"
  description = "Address space used by the virtual network"
  default     = "10.0.0.0/16"
}
variable subnet_prefix {
  type        = "string"
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}
variable tags {
  type        = map("string")
  description = "Tags to apply to resources"
  default     = {}
}
