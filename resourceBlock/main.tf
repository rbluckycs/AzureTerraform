resource "azurerm_resource_group" "terraforazuregroup1" {
  name     = "terraforazuregroup1"
  location = "North Europe"
}

resource "azurerm_storage_account" "storageacc05092026" {
  name                     = "storageacc05092026"
  resource_group_name      = azurerm_resource_group.terraforazuregroup1.name
  location                 = "North Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "terraformstoragecontainer1" {
  name                  = "terraformstoragecontainer1"
  storage_account_id    = azurerm_storage_account.storageacc05092026.id
}

resource "azurerm_storage_blob" "terraformblobfile_log" {
  name                 = "log.html"
  storage_container_id = azurerm_storage_container.terraformstoragecontainer1.id
  type                 = "Block"
  source               = "log.html"
}