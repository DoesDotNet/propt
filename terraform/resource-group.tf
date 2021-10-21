resource "azurerm_resource_group" "global" {
  name     = format("%s-rg-ukso", local.name_prefix)
  location = "UK South"
}