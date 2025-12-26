resource "azurerm_resource_group" "rg_1" {
    for_each = var.rg_config
  name     = each.value.rg_name
  location = each.value.location

}