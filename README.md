# terraform-azure-storage-account
### All code is provided for reference purposes only and is used entirely at own risk. Code is for use in development environments only. Not intended for Production use. 


Terraform module for creating a Storage Account for use on Azure Platform  


## Usage

    module "example" {
      source          = "git@github.com:sce81/terraform-azure-storage-account.git"
      name            = "vault${substr(data.azurerm_subscription.current.tenant_id,-12-1)}"
      environment     = "dev"
      resource_group  = data.azurerm_resource_group.vault.name
    }


### Prerequisites

Terraform >= 1.15.7
### Tested

Terraform >= 1.15.7
### Outputs

    id:               = azurerm_storage_account.main.id 
    location:         = azurerm_storage_account.main.primary_location
    endpoint:         = azurerm_storage_account.main.primary_blob_endpoint
    name:             = azurerm_storage_account.main.name
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.15.7 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_key_vault_managed_storage_account.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_managed_storage_account) | resource |
| [azurerm_storage_account.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | n/a | `string` | `"Standard"` | no |
| <a name="input_adminuser"></a> [adminuser](#input\_adminuser) | n/a | `string` | `"admin"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `any` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | n/a | `map(any)` | `{}` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | n/a | `number` | `1` | no |
| <a name="input_instance_repair"></a> [instance\_repair](#input\_instance\_repair) | n/a | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `any` | n/a | yes |
| <a name="input_replication_type"></a> [replication\_type](#input\_replication\_type) | n/a | `string` | `"LRS"` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | n/a | `any` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | n/a | `string` | `"Standard_F2"` | no |
| <a name="input_zone_balance"></a> [zone\_balance](#input\_zone\_balance) | n/a | `bool` | `true` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_location"></a> [location](#output\_location) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END_TF_DOCS -->
