module "rg_dev" {
  source = "../../modules/resource-group"
  name = var.rg_name
  location = var.location
  tags = var.tags
}

module "vnet_dev" {
  source = "../../modules/network"
  vnet_name = var.vnet_name
  address_space = var.address_space
  subnet_name = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefix
  location = module.rg_dev.location
  resource_group_name = module.rg_dev.name
  tags = var.tags
}

module "nsg_dev" {
  source = "../../modules/nsg"
  name = var.nsg_name
  location = module.rg_dev.location
  resource_group_name = module.rg_dev.name
  subnet_id = module.vnet_dev.subnet_id
  tags = var.tags
}

module "storage_dev" {
  source = "../../modules/storage-account"
  name = var.storage_name
  location = module.rg_dev.location
  resource_group_name = module.rg_dev.name
  tags = var.tags
}

module "vm_dev" {
  source = "../../modules/virtual-machine"
  vm_name = var.vm_name
  location = module.rg_dev.location
  resource_group_name = module.rg_dev.name
  subnet_id = module.vnet_dev.subnet_id

  admin_username = var.admin_username
  admin_password = var.admin_password

  tags = var.tags
}