module "rg" {
  source = "../../modules/resource-group"
  name = var.rg_name
  location = var.location
}

module "network" {
  source = "../../modules/network"
  vnet_name = var.vnet_name
  vnet_location = var.location
  address_space = var.address_space
  subnet_name = var.subnet_name
  subnet_prefix = var.subnet_prefix
  resource_group = module.rg.name
}

module "nsg" {
  source = "../../modules/nsg"
  nsg_name = var.nsg_name
  location = module.rg.location
  resource_group = module.rg.name
  subnet_id = module.network.subnet_id
}

module "vm" {
  source = "../../modules/virtual-machine"
  vm_name = var.vm_name
  vm_size = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  subnet_id = module.network.subnet_id
  location = module.rg.location
  resource_group = module.rg.name
}