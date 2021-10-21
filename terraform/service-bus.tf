resource "azurerm_servicebus_namespace" "global" {
  name                = format("%s-sb-ukso", local.name_prefix)
  location            = azurerm_resource_group.global.location
  resource_group_name = azurerm_resource_group.global.name
  sku                 = "Standard"

  tags = local.common_tags
}