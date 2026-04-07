resource "azurerm_resource_group" "RG" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags = {
    Creator = var.creator_name
  }
}

resource "azurerm_storage_account" "SA" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    Creator = var.creator_name
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  address_space       = ["10.0.0.0/16"]
  tags = {
    Creator = var.creator_name
  }
}

resource "azurerm_subnet" "subnets" {
  count                = length(var.subnets)
  name                 = var.subnets[count.index]
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = [
    cidrsubnet("10.0.0.0/16", 8, count.index)
  ]
}
