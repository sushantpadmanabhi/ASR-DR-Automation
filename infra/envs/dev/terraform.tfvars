#Resource-Group
rg_name = "rg-asr-dev"
location = "Central India"

#Network
vnet_name = "vnet-asr-dev"
address_space = ["10.0.0.0/16"]

subnet_name = "subnet-app"
subnet_prefix = ["10.0.1.0/24"]

#NSG
nsg_name = "nsg-asr-dev"

#VM
vm_name = "vm-asr-dev"
vm_size = "Standard_B2s"
admin_username = "azureuser"
admin_password = "Password123!"

subscription_id = "82b61061-64c5-4269-90e1-7e619219ef6e"