resource "azurerm_api_management" "global" {
  name                = format("propt-global-%s-ukso-apim", var.environment)
  location            = azurerm_resource_group.global.location
  resource_group_name = azurerm_resource_group.global.name
  publisher_name      = "Propt"
  publisher_email     = "info@propt.me"

  sku_name = "Consumption"
  tags     = local.common_tags
}