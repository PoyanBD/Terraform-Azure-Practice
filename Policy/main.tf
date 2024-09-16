resource "azurerm_policy_definition" "disallow-public-access" {
  name         = "StorageAccountCreateDisallowPublicNetworkAccess"
  policy_type  = "BuiltIn"
  mode         = "Indexed"
  display_name = "Storage account public access should be disallowed"

  metadata = <<METADATA
    {
    "version": "3.1.0-preview",
    "category": "Storage"
    }

METADATA


  policy_rule = <<POLICY_RULE
 {
    "if": {
        "allOf": [
          {
            "field": "type",
            "equals": "Microsoft.Storage/storageAccounts"
          },
          {
            "not": {
              "allOf": [
                {
                  "field": "id",
                  "contains": "/resourceGroups/aro-"
                },
                {
                  "anyOf": [
                    {
                      "field": "name",
                      "like": "cluster*"
                    },
                    {
                      "field": "name",
                      "like": "imageregistry*"
                    }
                  ]
                }
              ]
            }
          },
          {
            "not": {
              "field": "Microsoft.Storage/storageAccounts/allowBlobPublicAccess",
              "equals": "false"
            }
          }
        ]
      },
      "then": {
        "effect": "[parameters('effect')]"
      }
  }
POLICY_RULE


  parameters = <<PARAMETERS
 {
  "effect": {
      "type": "String",
      "metadata": {
        "displayName": "Effect",
        "description": "The effect determines what happens when the policy rule is evaluated to match"
      },
      "allowedValues": [
        "audit",
        "Audit",
        "deny",
        "Deny",
        "disabled",
        "Disabled"
        ],
      "defaultValue": "Deny"
      }
  }
PARAMETERS

}