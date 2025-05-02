
variable resource_group {
  description = "The name of the resource group in which to create the resources."
  nullable    = false
}
variable prefix {
  description = "Name resources prefixed by this value"
  nullable    = false
}
variable location {
  description = "Azure location/region where resources are to be created"
  nullable    = false
}
variable virtual_network_name {
  description = "The name for the virtual network."
  default     = "vnet"
}
variable address_space {
  description = "Address space used by the virtual network"
  default     = "10.0.0.0/16"
}
variable subnet_prefix {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}
