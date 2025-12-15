variable "name" {
  type        = string
  description = "Name of the ASR network mapping"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name of the Recovery Services vault"
}

variable "vault_name" {
  type        = string
  description = "Recovery Services vault name"
}

variable "primary_fabric_name" {
  type        = string
}

variable "secondary_fabric_name" {
  type        = string
}

variable "primary_vnet_id" {
  type        = string
}

variable "secondary_vnet_id" {
  type        = string
}
