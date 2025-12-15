variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "primary_location" {
  type = string
}

variable "tags" {
  type = map(string)
  default = {
    environment = "dr"
  }
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "subnet_address_prefix" {
  type = list(string)
}
variable "nsg_name" {
  type = string
}
variable "storage_name" {
  type = string
}
variable "recovery_vault_name" {
  type = string
}
variable "policy_name" {
  type = string
}
variable "asr_network_mapping_name" {
  type = string
}