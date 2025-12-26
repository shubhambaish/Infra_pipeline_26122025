module "rg" {
  source    = "../../Module/azurerm_resource_group"
  rg_config = var.rg_config
}

module "virtual_network_name" {
  source      = "../../Module/azurerm_virtual_network"
  vnet_config = var.vnet_config
  depends_on  = [module.rg]
}

module "subnet" {
  source        = "../../Module/azurerm_subnet"
  subnet_config = var.subnet_config
  depends_on    = [module.virtual_network_name]
}

module "public_ip" {
  source     = "../../Module/azurerm_public_ip"
  ip_config  = var.ip_config
  depends_on = [module.rg]
}

module "nic" {
  source     = "../../Module/azurerm_nic"
  nic_config = var.nic_config
  depends_on = [module.subnet, module.public_ip]
}

module "nsg" {
  source     = "../../Module/azurerm_network_security_group"
  nsg_config = var.nsg_config
  depends_on = [module.rg]
}

module "nsg_association" {
  source         = "../../Module/azurerm_network_security_group_Association"
  nsg_nic_config = var.nsg_nic_config
  depends_on     = [module.nsg, module.nic]
}

module "vm" {
  source     = "../../Module/azurerm_VM"
  vm_config  = var.vm_config
  depends_on = [module.nic, module.nsg_association]
}

