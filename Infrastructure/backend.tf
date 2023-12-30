terraform {
  backend "azurerm" {
	resource_group_name  = "tfstate"
	storage_account_name = "tfstoragedee"
	container_name       = "tfstate"
	key	                 = "terraform.tfstate"
  }
}