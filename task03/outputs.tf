output "rg_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.RG.id
}

output "sa_blob_endpoint" {
  description = "Blob Endpoint of the Storage Account"
  value       = azurerm_storage_account.SA.primary_blob_endpoint
}

output "vnet_id" {
  description = "Virtual network ID"
  value       = azurerm_virtual_network.vnet.id
}
