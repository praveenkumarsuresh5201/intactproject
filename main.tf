locals {
 prefix = "${var.context}-${var.env}-inf-${var.project}-${var.short_region}"
}

resource "azurerm_resource_group" "adb-sand-rg" {
  name     = "${local.prefix}-adb-rg-01"
  location = "eastus2"
}

# module "adb-adf" {
#   source = "C:/Users/Praveen Kumar/Documents/modules/datafactory"

#   context       = var.context
#   env           = var.env
#   project       = var.project
#   short_region  = var.short_region
#   rgname        = azurerm_resource_group.adb-sand-rg.name
#   location      = azurerm_resource_group.adb-sand-rg.location
#   tags          = var.tags
# }


module "storage" {
  source = "C:/Users/Praveen Kumar/Documents/modules/storage"


  context                  = var.context
  env                      = var.env
  project                  = var.project
  short_region             = var.short_region
  storage_account_name     = var.storage_account_name
  container_name           = var.container_name
  blob_name                = var.blob_name
  rgname                   = azurerm_resource_group.adb-sand-rg.name
  location                 = azurerm_resource_group.adb-sand-rg.location
  tags                     = var.tags
  source_file_path       = var.source_file_path
}










