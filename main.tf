resource "azurerm_network_interface_security_group_association" "network-asso" {
  # network_interface_id      = data.azurerm_network_interface.network_interface[each.key.nic_key].id
  # network_security_group_id = data.azurerm_network_security_group.network_secuity[each.key.nsg_key].id
  network_interface_id      = data.azurerm_network_interface.nic[each.value.nic_key].id
network_security_group_id = data.azurerm_network_security_group.nsg[each.value.nsg_key].id
}


 
   