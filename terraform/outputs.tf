output "resource_group_id" {
  description = "Resource ID of the lab resource group."
  value       = azurerm_resource_group.lab.id
}

output "storage_account_id" {
  description = "Resource ID of the private-by-default storage account."
  value       = azurerm_storage_account.lab.id
}

output "storage_account_name" {
  description = "Synthetic storage account name. No keys or connection strings are output."
  value       = azurerm_storage_account.lab.name
}
