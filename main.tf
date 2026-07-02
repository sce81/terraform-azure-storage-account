resource "azurerm_storage_account" "main" {
  name                            = var.name
  resource_group_name             = data.azurerm_resource_group.main.name
  location                        = data.azurerm_resource_group.main.location
  account_tier                    = var.account_tier
  account_replication_type        = var.replication_type
  https_traffic_only_enabled      = var.https_traffic_only_enabled
  min_tls_version                 = var.min_tls_version
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  public_network_access_enabled   = var.public_network_access_enabled
  shared_access_key_enabled       = var.shared_access_key_enabled

  tags = merge(
    local.common_tags, var.extra_tags,
  )
}


resource "azurerm_key_vault_managed_storage_account" "main" {
  name                         = "examplemanagedstorage"
  key_vault_id                 = var.keyvault
  storage_account_id           = azurerm_storage_account.example.id
  storage_account_key          = "key1"
  regenerate_key_automatically = false
  regeneration_period          = "P1D"
}
