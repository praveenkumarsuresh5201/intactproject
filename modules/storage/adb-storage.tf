locals {
 prefix = "${var.context}-${var.env}-inf-${var.project}-${var.short_region}"
}

resource "azurerm_storage_account" "storage_account_name" {
  name                     = "praviistorage"
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container_name" {
  name                     = "ananthancontainer"
  storage_account_name  = azurerm_storage_account.storage_account_name.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "storage_blob" {
  name                     = "vickyblob"
  storage_account_name   = azurerm_storage_account.storage_account_name.name
  storage_container_name = azurerm_storage_container.storage_container_name.name
  type                   = "Block"
  source                 = "C:/Users/Praveen Kumar/Documents/modules/storage/demo.txt"
}