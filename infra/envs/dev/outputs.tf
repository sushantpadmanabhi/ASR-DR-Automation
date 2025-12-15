output "vnet_id" {
  value = module.vnet_dev.vnet_id
}

output "vnet_name" {
  value = module.vnet_dev.vnet_name
}

output "resource_group_name" {
  value = module.rg_dev.name
}

output "vm_id" {
  value = module.vm_dev.vm_id
}

output "nic_id" {
  value = module.vm_dev.nic_id
}
output "os_disk_id" {
  value = module.vm_dev.os_disk_id
}