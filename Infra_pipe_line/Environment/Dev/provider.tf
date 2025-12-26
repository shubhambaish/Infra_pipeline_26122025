terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}


provider "azurerm" {
  features {}

  subscription_id = "becf41a0-446d-42d0-92b7-09e1ab420ad2"
}

