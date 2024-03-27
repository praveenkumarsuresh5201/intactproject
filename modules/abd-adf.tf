resource "azurerm_data_factory" "adf" {
  name                = "${var.rgname}-adf-01"
  resource_group_name = var.rgname
  location            = var.location
  tags                = var.tags
}