variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "recovery_vault_name" {
  type = string
}

variable "source_recovery_fabric_name" {
  type = string
}

variable "source_protection_container_name" {
  type = string
}

variable "target_recovery_fabric_id" {
  type = string
}

variable "target_protection_container_id" {
  type = string
}

variable "replication_policy_id" {
  type = string
}

variable "source_vm_id" {
  type = string
}

variable "target_resource_group_id" {
  type = string
}

variable "staging_storage_account_id" {
  type = string
}

variable "os_disk_id" {
  type = string
}

variable "target_disk_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "target_network_id" {
  type = string
}

variable "source_nic_id" {
  type = string
}

variable "target_static_ip" {
  type    = string
  default = null
}
