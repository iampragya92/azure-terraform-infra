terraform {
  required_version = "~>1.14.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "aibasedtodo"
    resource_group_name  = "rg-backend"
    container_name       = "tfstate"
    key                  = "dev.azure.terraform.infra"

  }
}


provider "azurerm" {
  features {}
  subscription_id = "1f196f8e-ab8f-4746-a1f5-1798c2228e8f"

}
