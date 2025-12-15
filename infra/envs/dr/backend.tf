terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-asr"
    storage_account_name = "sttfstateasr29928"
    container_name       = "tfstate"
    key                  = "asr-dr.tfstate"
  }
}
