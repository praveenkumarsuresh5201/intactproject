locals {
 prefix = "${var.context}-${var.env}-inf-${var.project}-${var.short_region}"
}

resource "azurerm_data_factory" "adf" {
  name                = "${local.prefix}-adf-01"
  resource_group_name = var.rgname
  location            = var.location
  tags                = var.tags
}


