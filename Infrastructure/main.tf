provider "azurerm" {
	features {}
}

resource "azurerm_container_group" "container_group" {
  name					= "weatherforecast-cg"
  location				= "westeurope"
  resource_group_name	= "tfstate"

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