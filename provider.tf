terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.74.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "b18g94Common"
    storage_account_name = "b18g94storage1"
    container_name       = "b18g94container"
    key                  = "produstrg.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}