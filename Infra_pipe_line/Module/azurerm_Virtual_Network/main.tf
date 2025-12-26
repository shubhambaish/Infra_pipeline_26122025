resource "azurerm_virtual_network" "vnet1" {
  for_each = var.vnet_config
  name                = each.value.virtual_network_name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}