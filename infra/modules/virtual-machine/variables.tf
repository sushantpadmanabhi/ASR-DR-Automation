variable "vm_name" {
  type = string
  description = "Name of the Virtual Machine"
}

variable "location" {
  type = string
  description = "Azure Region"
}

variable "resource_group" {
  type = string
  description = "Resource Group Name"
}

variable "subnet_id" {
  type = string
  description = "Subnet ID to attach to NIC"
}

variable "vm_size" {
  type = string
  description = "Size of the VM"
  default = "Standard_B2s"
}

variable "admin_username" {
  type = string
  description = "Admin username for VM"
}

variable "admin_password" {
  type = string
  sensitive = true
  description = "Admin password for VM"
}