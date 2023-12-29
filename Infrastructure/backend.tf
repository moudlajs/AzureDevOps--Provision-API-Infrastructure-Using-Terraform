terraform {
  backend "azurerm" {
	resource_group_name  = "weatherforecast-rg"
	storage_account_name = "weatherforecastsa"
	container_name       = "tfstate"
	key	                 = "terraform.tfstate"
  }
}