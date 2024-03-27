locals {
 prefix = "${var.context}-${var.env}-inf-${var.project}-${var.short_region}"
}

resource "azurerm_resource_group" "adb-sand-rg" {
  name     = "${local.prefix}-adb-rg-01"
  location = "eastus2"
}

module "adb-adf" {
  source = "C:/Users/Praveen Kumar/Documents/modules"

  rgname       = azurerm_resource_group.adb-sand-rg.name
  location     = azurerm_resource_group.adb-sand-rg.location
  sku          = "premium"
  tags         = {
    environment = "sand"
  }
}
