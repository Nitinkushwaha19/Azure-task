# Resource Group 
variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "resource_group_location" {
  type        = string
  description = "Location of the Resource Group"
}

variable "creator_name" {
  type        = string
  description = "Name of the creator of the Resource Group"
}

# Storage Account
variable "storage_account_name" {
  type        = string
  description = "Name of the Storage Account"
}

# Virtual Network
variable "virtual_network_name" {
  type        = string
  description = "Name of the Virtual Network"
}

# Subnets
variable "subnets" {
  type        = list(string)
  description = "List of subnet names to be created within the virtual network"
}

