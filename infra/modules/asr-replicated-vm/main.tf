resource "azurerm_site_recovery_replicated_vm" "asr_replicated_vm" {
  name                        = var.name
  resource_group_name         = var.resource_group_name
  recovery_vault_name         = var.recovery_vault_name

  source_recovery_fabric_name               = var.source_recovery_fabric_name
  source_vm_id                              = var.source_vm_id
  source_recovery_protection_container_name = var.source_protection_container_name

  recovery_replication_policy_id = var.replication_policy_id

  target_recovery_fabric_id               = var.target_recovery_fabric_id
  target_recovery_protection_container_id = var.target_protection_container_id
  target_resource_group_id                = var.target_resource_group_id

  managed_disk {
    disk_id                    = var.os_disk_id
    staging_storage_account_id = var.staging_storage_account_id
    target_resource_group_id   = var.target_resource_group_id
    target_disk_type           = var.target_disk_type
  }

  network_interface {
    source_network_interface_id = var.source_nic_id
    target_static_ip            = var.target_static_ip
  }

  target_network_id = var.target_network_id
}
