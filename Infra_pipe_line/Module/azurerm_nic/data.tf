data "azurerm_subnet" "datasubnet" {
    for_each = var.nic_config
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "shubham_ip" {
    for_each = var.nic_config
  name                = each.value.ip_name
  resource_group_name = each.value.resource_group_name
}

