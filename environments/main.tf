# Create the Resource Group
resource "azurerm_resource_group" "this" {
  name     = var.rgname
  location = var.location

  tags = {
    environment = var.env
  }
}
#
# Create the Databricks Workspace
resource "azurerm_databricks_workspace" "this" {
  name                        = var.wrkspname
  resource_group_name         = azurerm_resource_group.this.name
  location                    = azurerm_resource_group.this.location
  sku                         = var.sku

  tags = {
    environment = var.env
  }
}

