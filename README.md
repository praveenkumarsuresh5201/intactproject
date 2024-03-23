## Workspace and Cluster creation
Terraform code for creating a workspace and cluster in the resource group in a sequential flow.

## Physical Architecture


![WhatsApp Image 2024-03-23 at 15 02 54_db18a2bc](https://github.com/praveenkumarsuresh5201/intactproject/assets/114279329/fa0a814a-ded4-425e-867e-d5f81581cd5f)

## Usage:

This module deploys to create a workspace and cluster for a resource group in azure databricks.

## Requirements

| Name      | Version    |
|-----------|------------|
| terraform | >= 1.2, < 2.0 |
| azurerm   | >=3.0.0    |
| Scala     | 7.3.x-scala2.12 |


## Providers

| Name      | Version   |
|-----------|-----------|
| azurerm   | >=3.0.0   |
| databricks| 0.4.6     |


## Modules

| Name          | Source                                                                                  | Version   |
|---------------|-----------------------------------------------------------------------------------------|-----------|
| adb-workspace | git::https://github.internal.local/terraform-intactus-modules/terraform-azurerm-databricks.git//modules/adb-workspace | ref=dev-omkar |
| adb-cluster   | git::https://github.internal.local/terraform-intactus-modules/terraform-azurerm-databricks.git//modules/adb-cluster   | ref=dev-omkar |



## Inputs

| Name                          | Type    | Description                                                                                                               |
|-------------------------------|---------|---------------------------------------------------------------------------------------------------------------------------|
| context                       | string  | Context for the deployment. This could be a specific project, department, or organization name used to categorize the deployment. |
| env                           | string  | Environment for the deployment. This specifies the environment in which the resources will be deployed, such as development, staging, or production. |
| project                       | string  | Project name for the deployment. This identifies the specific project or initiative for which the resources are being provisioned. |
| short_region                  | string  | Short region code. This refers to the abbreviated code for the Azure region where the resources will be deployed.            |
| location                      | string  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.       |
| sku                           | string  | The Name of the SKU used for this workspace and cluster. Possible values are standard and premium.                                     |
| tags                          | map(strings) | Tags to apply on workspace and cluster resource. Defaults to empty.                                                                 |
| min_workers                   | number  | Minimum number of workers for the cluster. This sets the minimum number of worker nodes for the Databricks cluster, ensuring a baseline capacity is always available. |
| max_workers                   | number  | Maximum number of workers for the cluster. This defines the maximum number of worker nodes that can be provisioned in the Databricks cluster, ensuring scalability. |
| cluster_autotermination_minutes | number | Number of minutes before an idle cluster is terminated. This specifies the duration of inactivity (in minutes) before an idle Databricks cluster is automatically terminated to conserve resources. |
| policy_overrides              | list    | List of policy overrides for the Databricks workspace. This includes any custom policy settings or configurations that override the default settings for the Databricks workspace, such as network access controls or encryption settings. |


## Outputs

| Name      | Description |
|-----------|-------------|
|           |             |
