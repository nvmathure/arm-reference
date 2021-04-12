call az login
call az account set --subscription %1
call az deployment group create --template-file %3 --parameters %4 --resource-group %2 