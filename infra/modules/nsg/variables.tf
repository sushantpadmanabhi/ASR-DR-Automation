variable "nsg_name" {
  type = string
  description = "Name of the NSG Associated"
}

variable "location" {
  type = string
  description = "Azure Region"
}

variable "resource_group" {
  type = string
  description = "RG Name"
}

variable "subnet_id" {
  type = string
  description = "Subnet ID to associate NSG"
}