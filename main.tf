
# If working in your own environment, you may want to create a resource_group
# In this lab environment you are limited to your ```studentN``` resource_group
#
#resource "azurerm_resource_group rg {
#  location = var.location
#  name     = var.resource_group
#}

resource azurerm_virtual_network vnet {
  name                = "${var.prefix}-${var.virtual_network_name}"
  location            = var.location
  address_space       = [ var.address_space ]

  # NOTE: we could use var.resource_group here but we could then run into race conditions
  #       where the creation of this resource fails because the resource group is not yet created
  #
  #.      Using the azurerm_resource_group.rg.name reference informs Terraform of the dependency between resources
  #resource_group_name   = azurerm_resource_group.rg.name
  resource_group_name = var.resource_group

  tags = { source = "terraform" }
}

resource azurerm_subnet subnet {
  name                 = "${var.prefix}-subnet"
  virtual_network_name = azurerm_virtual_network.vnet.name
  #resource_group_name   = azurerm_resource_group.rg.name
  resource_group_name = var.resource_group
  address_prefixes     = [ var.subnet_prefix ]

  # Curiously this resource does not have a tags parameter
  # tags = { source = "terraform" }
}

