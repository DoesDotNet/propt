resource "github_actions_organization_secret" "log_analytics_id" {
  secret_name     = "DOESDOTNET_LOG_ANALYTICS_ID"
  visibility      = "all"
  plaintext_value = azurerm_log_analytics_workspace.global.id
}

resource "github_actions_organization_secret" "log_analytics_workspace_id" {
  secret_name     = "DOESDOTNET_LOG_ANALYTICS_WORKSPACE_ID"
  visibility      = "all"
  plaintext_value = azurerm_log_analytics_workspace.global.workspace_id
}

resource "github_actions_organization_secret" "log_analytics_name" {
  secret_name     = "DOESDOTNET_LOG_ANALYTICS_NAME"
  visibility      = "all"
  plaintext_value = azurerm_log_analytics_workspace.global.name
}

resource "github_actions_organization_secret" "log_analytics_key" {
  secret_name     = "DOESDOTNET_LOG_ANALYTICS_KEY"
  visibility      = "all"
  plaintext_value = azurerm_log_analytics_workspace.global.primary_shared_key
}

resource "github_actions_organization_secret" "apim_name" {
  secret_name     = "DOESDOTNET_APIM_NAME"
  visibility      = "all"
  plaintext_value = azurerm_api_management.global.name
}

resource "github_actions_organization_secret" "global_resource_group_name" {
  secret_name     = "DOESDOTNET_GLOBAL_RG_NAME"
  visibility      = "all"
  plaintext_value = azurerm_resource_group.global.name
}

resource "github_actions_organization_secret" "global_resource_group_location" {
  secret_name     = "DOESDOTNET_GLOBAL_RG_LOCATION"
  visibility      = "all"
  plaintext_value = azurerm_resource_group.global.location
}

resource "github_actions_organization_secret" "servicebus_name" {
  secret_name     = "DOESDOTNET_GLOBAL_SERVICEBUS_NAME"
  visibility      = "all"
  plaintext_value = azurerm_servicebus_namespace.global.name
}

resource "github_actions_organization_secret" "app_configuration_name" {
  secret_name     = "DOESDOTNET_GLOBAL_APPCONFIG_NAME"
  visibility      = "all"
  plaintext_value = azurerm_app_configuration.global.name
}