data "terraform_remote_state" "dev" {
  backend = "azurerm"

  config = {
    resource_group_name  = "rg-tfstate-asr"
    storage_account_name = "<your-tfstate-storage-account>"
    container_name       = "tfstate"
    key                  = "asr-dev.tfstate"
  }
}


module "rg_dr" {
  source = "../../modules/resource-group"
  name = var.rg_name
  location = var.location
  tags = var.tags
}

module "vnet_dr" {
  source = "../../modules/network"
  vnet_name = var.vnet_name
  address_space = var.address_space
  subnet_name = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefix
  location = module.rg_dr.location
  resource_group_name = module.rg_dr.name
  tags = var.tags
}

module "nsg_dr" {
  source = "../../modules/nsg"
  name = var.nsg_name
  location = module.rg_dr.location
  resource_group_name = module.rg_dr.name
  subnet_id = module.vnet_dr.subnet_id
  tags = var.tags
}

module "storage_dr" {
  source = "../../modules/storage-account"
  name = var.storage_name
  location = module.rg_dr.location
  resource_group_name = module.rg_dr.name
  tags = var.tags
}

module "recovery_vault_dr" {
  source = "../../modules/recovery-vault"
  name = var.recovery_vault_name
  location = module.rg_dr.location
  resource_group_name = module.rg_dr.name
  tags = var.tags
}

module "asr_replication_policy" {
  source = "../../modules/asr-policy"
  policy_name = var.policy_name
  vault_name = module.recovery_vault_dr.name
  resource_group_name = module.rg_dr.name
}

module "asr_network_mapping" {
  source = "../../modules/asr-network-mapping"

  name = var.asr_network_mapping_name
  resource_group_name = module.rg_dr.name
  vault_name = module.recovery_vault_dr.name

  primary_fabric_name = "Azure"
  secondary_fabric_name = "Azure"

  primary_vnet_id = module.vnet_dev.vnet_id
  secondary_vnet_id = module.vnet_dr.vnet_id
}
