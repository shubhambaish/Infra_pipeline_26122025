


resource "azurerm_network_interface_security_group_association" "nsga" {
  for_each = var.nsg_nic_config
  network_interface_id      = data.azurerm_network_interface.nicdata[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsgdata[each.key].id
}