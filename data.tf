data "azurerm_network_security_group" "network-asso" {
    for_each=var.nsg-asso
  name                = each.value.name
   resource_group_name = each.value.resource_group_name
}