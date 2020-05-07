resource "azurerm_virtual_machine" "vm1" { 
  name = "vm1" 
  location = "${var.location}" 
  resource_group_name = "${var.resource_group_name}" 
  network_interface_ids = ["${azurerm_network_interface.nic1.id}"] 
  vm_size = "Standard_DS1_v2" 
  storage_image_reference { 
    publisher = "OpenLogic" 
    offer = "CentOS" 
    sku = "7.5" 
    version = "latest" 
  } 
  storage_os_disk { 
    name = "myosdisk1" 
    caching = "ReadWrite" 
    create_option = "FromImage" 
    managed_disk_type = "Standard_LRS" 
  } 
  os_profile { 
    computer_name = "vm1" 
    admin_username = "centos" 
    admin_password = "Turkishdelight1984" 
  } 
  os_profile_linux_config { 
    disable_password_authentication = false 
  } 
  tags { 
    environment = "staging" 
  } 
} 