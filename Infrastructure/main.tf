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
	image		= "dropthebeat/weatherforecast:${var.imagebuild}"
	  cpu		= "1"
	  memory	= "1"

	  ports {
	    port	 = "80"
	    protocol = "TCP"
	  }
  }
}