resource "azurerm_site_recovery_network_mapping" "asr_network_mapping" {
  name                = var.name
  resource_group_name = var.resource_group_name
  recovery_vault_name = var.vault_name

  source_recovery_fabric_name = var.primary_fabric_name
  source_network_id           = var.primary_vnet_id

  target_recovery_fabric_name = var.secondary_fabric_name
  target_network_id           = var.secondary_vnet_id
}
