terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.81.0"
    }

    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "propt-tf-test-rg-ukso"
    storage_account_name = "propttftestsaukso"
    container_name       = "terraformstate"
    key                  = "propt-global.tfstate"
  }
}

provider "azurerm" {
  features {}
}

provider "github" {
  owner = var.gh-organisation
}

data "azurerm_client_config" "current" {
}