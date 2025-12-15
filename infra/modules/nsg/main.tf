resource "azurerm_network_security_group" "nsg" {
  name = var.name
  location = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_network_security_rule" "allow_ssh" {
  name = "Allow-SSH"
  priority = 100
  direction = "Inbound"
  access = "Allow"
  protocol = "Tcp"
  source_port_range = "*"
  destination_port_range = "22"
  source_address_prefix = "*"
  destination_address_prefix = "*"
  network_security_group_name = azurerm_network_security_group.nsg.name
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "subnet_assoc" {
  subnet_id = var.subnet_id
  network_security_group_id = azurerm_network_security_group.nsg.id
}