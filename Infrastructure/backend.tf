terraform {
  backend "azurerm" {
	resource_group_name  = "weatherforecast-rg"
	storage_account_name = "weathestoragekokot"
	container_name       = "tfstate"
	key	                 = "terraform.tfstate"
  }
}