provider "azurerm" {
	features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_group" "container_group" {
  name					= "weatherforecast-cg"
  location				= azurerm_resource_group.resource_group.location
  resource_group_name	= azurerm_resource_group.resource_group.name

  ip_address_type		= "Public"
  dns_name_label		= "weatherforecast"
  os_type				= "Linux"

  container {
	name		= "weatherforecast"
	image		= "dropthebeat/weatherforecast:weatherforecast"
	  cpu		= "1"
	  memory	= "1"

	  ports {
	    port	 = "80"
	    protocol = "TCP"
	  }
  }
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = var.tfstate_container_name
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "blob"
}

# resource "azurerm_storage_blob" "storage_blob" {
#   name                   = var.storage_blob_name
#   storage_account_name   = var.storage_account_name
#   storage_container_name = azurerm_storage_container.storage_container.name
#   type                   = "Block"
# }