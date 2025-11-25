variable "vnet_name" {
  type = string
  description = "Name of Virtual Network"
}

variable "address_space" {
  type = list(string)
  description = "Address spac of VNet"
}

variable "vnet_location" {
  type = string
  description = "Azure Region for VNet"
}

variable "resource_group" {
  type = string
  description = "Name of Resource Group"
}

variable "subnet_name" {
  type = string
  description = "Name of subnet"
}

variable "subnet_prefix" {
  type = list(string)
  description = "Subnet address prefix"
}