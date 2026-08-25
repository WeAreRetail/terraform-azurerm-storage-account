terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0.0, < 5.0.0" #Temporary constraint to prevent breaking changes from azurerm provider v5.0.0
    }
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = ">= 1.2.28"
    }
  }
}
