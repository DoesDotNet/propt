resource "azurerm_log_analytics_workspace" "global" {
  name                = format("%s-loga-ukso", local.name_prefix)
  location            = azurerm_resource_group.global.location
  resource_group_name = azurerm_resource_group.global.name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  tags = local.common_tags
}