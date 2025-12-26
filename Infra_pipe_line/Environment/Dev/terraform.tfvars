rg_config = {
  shubham-rg-dev = {
    rg_name  = "shubham-rg-dev"
    location = "East US"
  }
  shubham-rg-prod = {
    rg_name  = "shubham-rg-prod"
    location = "West US"
  }
}
vnet_config = {
  shubham-vnet-dev = {
    virtual_network_name = "shubham-vnet-dev"
    address_space        = ["10.0.0.0/16"]
    resource_group_name  = "shubham-rg-dev"
    location             = "East US"

  }
}
subnet_config = {
  shubham-subnet-dev = {
    subnet_name          = "shubham-subnet-dev"
    resource_group_name  = "shubham-rg-dev"
    virtual_network_name = "shubham-vnet-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
ip_config = {
  shubham-ip-dev = {
    ip_name             = "shubham-ip-dev"
    resource_group_name = "shubham-rg-dev"
    location            = "East US"
    allocation_method   = "Dynamic"
  }
}
nic_config = {
  shubham-nic-dev = {
    nic_name             = "shubham-nic-dev"
    resource_group_name  = "shubham-rg-dev"
    location             = "East US"
    subnet_name          = "shubham-subnet-dev"
    virtual_network_name = "shubham-vnet-dev"
    ip_name              = "shubham-ip-dev"
  }
}
nsg_config = {
  shubham-nsg-dev = {
    nsg_name            = "shubham-nsg-dev"
    resource_group_name = "shubham-rg-dev"
    location            = "East US"
  }
}
nsg_nic_config = {
  shubham-nsg-nic-dev = {
    nsg_name            = "shubham-nsg-dev"
    nic_name            = "shubham-nic-dev"
    resource_group_name = "shubham-rg-dev"
  }
}
vm_config = {
  shubham-vm-dev = {
    vm_name             = "shubham-vm-dev"
    resource_group_name = "shubham-rg-dev"
    vm_location         = "East US"
    nic_name            = "shubham-nic-dev"
    vm_size             = "Standard_DS1_v2"
    admin_username      = "azureuser"
    admin_password      = "P@ssw0rd1234!"
    publisher           = "Canonical"
    offer               = "UbuntuServer"
    sku                 = "18.04-LTS"
  }
}

