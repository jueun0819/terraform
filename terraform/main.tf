terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
}

provider "azurerm" {
  version = ">=2.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources3"
  location = "West Europe"
}
