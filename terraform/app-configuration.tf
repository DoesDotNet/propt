resource "azurerm_app_configuration" "appconf" {
  name                = format("%s-appcg-%s", local.name_prefix, local.locations[azurerm_resource_group.global.location])
  resource_group_name = azurerm_resource_group.global.name
  location            = azurerm_resource_group.global.location
  sku                 = "free"

  tags = local.common_tags
}