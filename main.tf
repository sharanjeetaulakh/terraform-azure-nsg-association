resource "azurerm_network_interface_security_group_association" "network-asso" {
  for_each = var.nsg-asso

  network_interface_id      = data.azurerm_network_interface.nic[each.value].id
  network_security_group_id = data.azurerm_network_security_group.nsg[each.value].id
}