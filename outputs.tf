output "id" {
    value = azurerm_storage_account.main.id
}

output "location" {
    value = azurerm_storage_account.main.primary_location
}

output "endpoint" {
    value = azurerm_storage_account.main.primary_blob_endpoint
}

output "name" {
    value = azurerm_storage_account.main.name
}