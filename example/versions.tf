terraform {

  required_version = ">=1.2.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.19.1"
    }
  }
}

provider "azurerm" {
  features {}
}
