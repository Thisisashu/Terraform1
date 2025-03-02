variable "vm_name" {
  type = string
  description = "This is the name for the virtual machine"
}

variable "admin_username" {
  type = string
  description = "admin username for the virtual machine"
}

variable "vm_size" {
  type = string
  description = "This is the size of the machine"
  default = "Standard_B2s"
}
variable "admin_password" {
  type = string
  description = "this the admin password for the vm"
  sensitive = true
}

resource "azurerm_managed_disk" "datadisk01" {
  name                 = "datadisk01"
  location             = local.resource_location
  resource_group_name  = azurerm_resource_group.appgrp.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "4"
}

resource "azurerm_virtual_machine_data_disk_attachment" "example" {
  managed_disk_id    = azurerm_managed_disk.datadisk01.id
  virtual_machine_id = azurerm_windows_virtual_machine.webvm01.id
  lun                = "0"
  caching            = "ReadWrite"
}