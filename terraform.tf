terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id = "ad726722-f82d-4705-a70e-801f3c290f1a"
  client_secret = "Fxs8Q~JZ_VRIawZtYZc-1Q198YKCEbK7-POWacYI"
  tenant_id = "014f0f94-9993-499e-a6d4-34325e76f534"
  subscription_id = "b5ff1afb-ae55-42f1-a9be-c26f8e9a48f4"
  
}
