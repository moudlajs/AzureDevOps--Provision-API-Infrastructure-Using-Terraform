variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which all resources in this example should be created."
}

variable "storage_account_name" {
  description = "The name of the storage account in which all resources in this example should be created."
}

variable "tfstate_container_name" {
  description = "The name of tfsstae fiel container."
}

variable "storage_blob_name" {
  description = "The name of tfsstae fiel container."
}

variable "key" {
  description = "The name of key terraform tfs state."
}