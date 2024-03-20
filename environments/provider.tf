terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = var.aad_client_id
  client_secret   = var.aad_client_secret
  tenant_id       = var.aad_tenant_id
  subscription_id = var.aad_subscription_id
}

provider "databricks" {
  azure_workspace_resource_id = var.azure_workspace_resource_id
  host                        = var.host
}
