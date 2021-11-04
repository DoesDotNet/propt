resource "github_actions_organization_secret" "log_analytics_id" {
  secret_name     = format("PROPT_LOG_ANALYTICS_ID_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_log_analytics_workspace.global.id
}

resource "github_actions_organization_secret" "log_analytics_workspace_id" {
  secret_name     = format("PROPT_LOG_ANALYTICS_WORKSPACE_ID_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_log_analytics_workspace.global.workspace_id
}

resource "github_actions_organization_secret" "log_analytics_name" {
  secret_name     = format("PROPT_LOG_ANALYTICS_NAME_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_log_analytics_workspace.global.name
}

resource "github_actions_organization_secret" "log_analytics_key" {
  secret_name     = format("PROPT_LOG_ANALYTICS_KEY_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_log_analytics_workspace.global.primary_shared_key
}

resource "github_actions_organization_secret" "apim_name" {
  secret_name     = format("PROPT_APIM_NAME_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_api_management.global.name
}

resource "github_actions_organization_secret" "global_resource_group_name" {
  secret_name     = format("PROPT_GLOBAL_RG_NAME_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_resource_group.global.name
}

resource "github_actions_organization_secret" "global_resource_group_location" {
  secret_name     = format("PROPT_GLOBAL_RG_LOCATION_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_resource_group.global.location
}

resource "github_actions_organization_secret" "servicebus_name" {
  secret_name     = format("PROPT_GLOBAL_SERVICEBUS_NAME_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_servicebus_namespace.global.name
}

resource "github_actions_organization_secret" "app_configuration_name" {
  secret_name     = format("PROPT_GLOBAL_APPCONFIG_NAME_%s", upper(var.environment))
  visibility      = "all"
  plaintext_value = azurerm_app_configuration.global.name
}