resource "azurerm_public_ip" "shubham_publicip" {
  for_each            = var.ip_config
  name                = each.value.ip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method  
  sku                 = "Standard"
    
  }  
