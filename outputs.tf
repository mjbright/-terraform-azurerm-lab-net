
output vnet_id {
  value = azurerm_virtual_network.vnet.id
}

output subnet_id {
  value = azurerm_subnet.subnet.id
}

output netsecgrp_id {
  value = azurerm_network_security_group.sec-grp.id
}

