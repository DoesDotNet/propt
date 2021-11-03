output "log_analytics_id" {
  value = azurerm_log_analytics_workspace.global.id
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.global.workspace_id
}

output "log_analytics_name" {
  value = azurerm_log_analytics_workspace.global.name
}

output "log_analytics_key" {
  value = azurerm_log_analytics_workspace.global.primary_shared_key
  sensitive = true
}

output "apim_name" {
  value = azurerm_api_management.global.name
}

output "global_resource_group_name" {
    value = azurerm_resource_group.global.name
}

output "global_resource_group_location" {
    value = azurerm_resource_group.global.location
}

output "servicebus_name" {
  value = azurerm_servicebus_namespace.global.name
}

output "app_configuration_name" {
    value = azurerm_app_configuration.global.name
}