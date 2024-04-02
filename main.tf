resource "azurerm_storage_account" "main" {
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.main.name
  location                 = data.azurerm_resource_group.main.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  tags = merge(
    local.common_tags, var.extra_tags,
  )
}