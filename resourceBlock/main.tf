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