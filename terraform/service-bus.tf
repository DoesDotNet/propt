resource "azurerm_servicebus_namespace" "global" {
  name                = format("propt-global-%s-ukso-sb", var.environment)
  location            = azurerm_resource_group.global.location
  resource_group_name = azurerm_resource_group.global.name
  sku                 = "Standard"

  tags = local.common_tags
}