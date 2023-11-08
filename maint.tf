# Terraform Azure VM demo
provider "azurerm" {
  features {}
}

# resource "azurerm_resource_group" "this" {
#   name     = "${var.prefix}-rg"
#   location = var.location
# }

# resource "azurerm_virtual_network" "this" {
#   name                = "${var.prefix}-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.this.location
#   resource_group_name = azurerm_resource_group.this.name
# }

# resource "azurerm_subnet" "internal" {
#   name                 = "internal"
#   resource_group_name  = azurerm_resource_group.this.name
#   virtual_network_name = azurerm_virtual_network.this.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_network_interface" "this" {
# #   count               = 5
# #   name                = "${var.prefix}-nic-${count.index}"
#   name                = "${var.prefix}-nic"
#   resource_group_name = azurerm_resource_group.this.name
#   location            = azurerm_resource_group.this.location

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.internal.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_linux_virtual_machine" "this" {
# #   count                           = 5
# #   name                            = "${var.prefix}-vm-${count.index}"
#   network_interface_ids = [
#     # azurerm_network_interface.this[count.index].id,
#     azurerm_network_interface.this.id,
#   ]

#   name                            = "${var.prefix}-vm"
#   resource_group_name             = azurerm_resource_group.this.name
#   location                        = azurerm_resource_group.this.location
#   size                            = "Standard_F2"
#   admin_username                  = "localadmin"
#   admin_password                  = "KP8CRex@N?$dsS#3zv5TgWZUM6faLmG!"
#   disable_password_authentication = false

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "UbuntuServer"
#     sku       = "16.04-LTS"
#     version   = "latest"
#   }

#   os_disk {
#     storage_account_type = "Standard_LRS"
#     caching              = "ReadWrite"
#   }
# }
