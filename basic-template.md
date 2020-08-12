# Basic ARM Template

### Empty Template
``` JSON
{
  "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {},
  "variables": {},
  "resources": [],
  "outputs": {}
}
```

### Common Parameters
``` JSON
{
  "tenantCode": {
    "defaultValue": "",
    "type": "string",
    "maxLength": 5
  },
  "primaryLocation": {
    "defaultValue": "resourceGroup().location",
    "type": "string"
  },
  "secondaryLocation": {
    "defaultValue": "resourceGroup().location",
    "type": "string"
  }
}
```

### Common Variables
``` JSON
{
  "applicationName": "SampleApp",
  "suffixCode": "[if(equals(length(parameters('tenantCode')), 0), '', concat('-', parameters('tenantCode')))]",
  "sb_namespace": "[concat('sb-', variables('applicationName'), variables('suffixCode'))]",
  "ai_name": "[concat('ai-', variables('applicationName'), variables('suffixCode'))]",
  "kv_name": "[concat('kv-', variables('applicationName'), variables('suffixCode'))]",
  "sa_name": "[toLower(replace(concat('sa-', variables('applicationName'), variables('suffixCode')), '-', ''))]",
  "asp_name": "[concat('asp-', variables('applicationName'), variables('suffixCode'))]",
  "fa_name": "[concat('fa-', variables('applicationName'), variables('suffixCode'))]",
  "egt_name": "[concat('egt-', variables('applicationName'), variables('suffixCode'))]",
  "cdb_name": "[concat('cdb-', variables('applicationName'), variables('suffixCode'))]",
  "adf_name": "[concat('adf-', variables('applicationName'), variables('suffixCode'))]",
  "apim_name": "[concat('apim-', variables('applicationName'), variables('suffixCode'))]",
  "primaryLocation": "[parameters('primaryLocation')]",
  "secondaryLocation": "[parameters('secondaryLocation')]"
}
```