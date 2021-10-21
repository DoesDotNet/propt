resource "azurerm_api_management" "global" {
  name                = format("%s-apim-%s", local.name_prefix, local.locations[azurerm_resource_group.global.location])
  location            = azurerm_resource_group.global.location
  resource_group_name = azurerm_resource_group.global.name
  publisher_name      = "Propt"
  publisher_email     = "info@propt.me"

  sku_name = "Consumption_0"
  tags     = local.common_tags

  sign_up {
    enabled = false
    terms_of_service {
      enabled = false
      consent_required = false
    }
  }

  protocols {
    enable_http2 = true
  }
}