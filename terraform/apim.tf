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
      enabled          = false
      consent_required = false
    }
  }

  protocols {
    enable_http2 = true
  }
}

resource "azurerm_api_management_product" "web-api" {
  product_id            = "web-api"
  api_management_name   = azurerm_api_management.global.name
  resource_group_name   = azurerm_resource_group.global.name
  description           = "API for web app"
  display_name          = "Web API"
  subscription_required = false
  approval_required     = false
  published             = true
}

# resource "azurerm_key_vault_certificate" "web-api" {
#   name         = "web-api-domain"
#   key_vault_id = azurerm_key_vault.global.id

#   certificate_policy {
#     issuer_parameters {
#       name = "Self"
#     }

#     key_properties {
#       exportable = true
#       key_size   = 2048
#       key_type   = "RSA"
#       reuse_key  = true
#     }

#     lifetime_action {
#       action {
#         action_type = "AutoRenew"
#       }

#       trigger {
#         days_before_expiry = 30
#       }
#     }

#     secret_properties {
#       content_type = "application/x-pkcs12"
#     }

#     x509_certificate_properties {
#       key_usage = [
#         "cRLSign",
#         "dataEncipherment",
#         "digitalSignature",
#         "keyAgreement",
#         "keyCertSign",
#         "keyEncipherment",
#       ]

#       subject            = "CN=web-api-test.propt.me"
#       validity_in_months = 12

#       subject_alternative_names {
#         dns_names = [
#           "web-api-test.propt.me",
#         ]
#       }
#     }
#   }

#   tags = local.common_tags
# }

# resource "azurerm_api_management_custom_domain" "web-api" {
#   api_management_id = azurerm_api_management.global.id

#   proxy {
#     host_name    = "web-api-test.propt.me"
#     key_vault_id = azurerm_key_vault_certificate.web-api.secret_id
#   }
# }