variable "rg_name" {
  type = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map(string)
  default = {
    environment = "dev"
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
variable "vm_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}
