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
  skip_provider_registration = "true"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources2"
  location = "West Europe"
}
