variable "aad_tenant_id" {
  type        = string
  description = "The id of the Azure Tenant to which all subscriptions belong"
  #  default     = "29dfe2bd-dc40-4934-8c75-8419c7ab1e30"
  default = ""
}

variable "aad_subscription_id" {
  type        = string
  description = "The id of the Azure Subscription"
  #  default     = "31324520-9b0f-447e-98f4-c8ac3667708d"
  default = ""
}

variable "aad_client_id" {
  type        = string
  description = "The client id of the Service Principal for interacting with Azure resources"
  #  default     = ""
  default = ""
}

variable "aad_client_secret" {
  type        = string
  description = "The client secret of the Service Principal for interacting with Azure resources"
  sensitive   = true
  #  default     = ""
  default = ""
}

# Resource group name
variable "rgname" {
  type        = string
  description = "This variable defines the resource group name used to build resources"
#  default     = "datasanddlhrg01"
  default = ""
}

# Workspace name
variable "wrkspname" {
  type        = string
  description = "This variable defines the workspace name used to build resources"
#  default     = "datasanddbrksws"
  default = ""
}

# Environment
variable "env" {
  type        = string
  description = "This variable defines the environment to be built"
#  default     = "dev"
  default = ""
}

# Azure region
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
#  default     = "East US2"
  default = ""
}

# SKU type
variable "sku" {
  type        = string
  description = "This variable defines the account type"
#  default     = "premium"
  default = ""
}

variable "azure_workspace_resource_id" {
  type        = string
  description = "This variable defines the azure workspace id"
#  default     = ""
  default = ""
}

variable "host" {
  type        = string
  description = "This variable defines the host"
#  default     = ""
  default = ""
}
