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

Terraform ~> 1.7.0  

### Tested

Terraform ~> 1.7.0  

### Outputs

    id:               = azurerm_storage_account.main.id 
    location:         = azurerm_storage_account.main.primary_location
    endpoint:         = azurerm_storage_account.main.primary_blob_endpoint
    name:             = azurerm_storage_account.main.name