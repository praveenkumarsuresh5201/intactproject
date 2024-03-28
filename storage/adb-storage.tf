locals {
 prefix = "${var.context}-${var.env}-inf-${var.project}-${var.short_region}"
}

resource "azurerm_storage_account" "storage_account_name" {
  name                     = var.storage_account_name
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container_name" {
  name                     = var.container_name
  storage_account_name  = azurerm_storage_account.storage_account_name.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "azurerm_storage_blob" {
  name                     = var.blob_name
  storage_account_name   = azurerm_storage_account.storage_account_name.name
  storage_container_name = azurerm_storage_container.storage_container_name.name
  type                   = "Block"
  source                 = var.source_file_path
}