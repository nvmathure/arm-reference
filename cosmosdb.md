# Cosmos DB Templates

### Create Database Account
``` JSON
{
  "type": "Microsoft.DocumentDb/databaseAccounts",
  "apiVersion": "2019-12-12",
  "name": "DatabaseAccountName",
  "location": "East US",
  "tags": {
    "CosmosAccountType": "Production",
    "defaultExperience": "Core (SQL)"
  },
  "kind": "GlobalDocumentDB",
  "properties": {
    "databaseAccountOfferType": "Standard",
    "locations": [
      {
        "id": "DatabaseAccountName-EastUS",
        "failoverPriority": 0,
        "locationName": "East US"
      }
    ],
    "enableMultipleWriteLocations": false,
    "isVirtualNetworkFilterEnabled": false,
    "virtualNetworkRules": [],
    "ipRangeFilter": "",
    "dependsOn": [],
    "capabilities": [],
    "enableFreeTier": false
  }
}
```
### Create Database (Fixed RUs)
``` JSON
{
  "type": "Microsoft.DocumentDB/databaseAccounts/sqlDatabases",
  "apiVersion": "2020-04-01",
  "name": "DatabaseAccountName/DatabaseName",
  "dependsOn": [
    "[resourceId('Microsoft.DocumentDB/databaseAccounts/DatabaseAccountName')]"
  ],
  "properties": {
    "resource": {
      "id": "DatabaseName"
    },
    "options": {
      "throughput": 500
    }
  }
}
```

### Create Database (AutoScale RUs)
``` JSON
{
  "type": "Microsoft.DocumentDB/databaseAccounts/sqlDatabases",
  "apiVersion": "2020-04-01",
  "name": "DatabaseAccountName/DatabaseName",
  "dependsOn": [
    "[resourceId('Microsoft.DocumentDB/databaseAccounts/DatabaseAccountName')]"
  ],
  "properties": {
    "resource": {
      "id": "DatabaseName"
    },
    "options": {
      "autoscaleSettings" : {
        "maxThroughput" : 4000
      }
    }
  }
}
```

### Create Database (Collection RUs)

### Create Collection (Fixed RUs)

### Create Collection (AutoScale RUs)

### Create Collection (Collection RUs)