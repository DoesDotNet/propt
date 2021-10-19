resource "azurerm_resource_group" "global" {
  name     = format("propt-global-%s-ukso-rg", var.environment)
  location = "UK South"
}