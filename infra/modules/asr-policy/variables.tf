variable "policy_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "vault_name" {
  type = string
}

variable "recovery_point_retention_in_minutes" {
  type    = number
  default = 1440 # 1 day
}

variable "application_consistent_snapshot_frequency_in_minutes" {
  type    = number
  default = 0 # 0 = disable app-consistent snapshots (cost efficient)
}
