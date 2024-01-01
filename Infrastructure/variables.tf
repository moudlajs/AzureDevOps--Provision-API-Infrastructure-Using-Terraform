variable "location" {
  type = string
  default = "westeurope"
  description = "The Azure Region in which all resources in this example should be created."
}

variable "resource_group_name" {
  type = string
  default = "weatherforecast-rg"
  description = "The name of the resource group in which all resources in this example should be created."
}

variable "storage_account_name" {
  type = string
  default = "tfstoragedee"
  description = "The name of the storage account in which all resources in this example should be created."
}

variable "tfstate_container_name" {
  type = string
  default = "tfstate"
  description = "The name of tfsstae fiel container."
}

variable "key" {
  type = string
  default = "terraform.tfstate"
  description = "The name of key terraform tfs state."
}

variable "imagebuild" {
  type = string
  default = ""
  description = "Docker image last build version."
}