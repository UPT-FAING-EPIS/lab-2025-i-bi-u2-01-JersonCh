provider "azurerm" {
  features {}
  subscription_id = "37b22429-d75b-401b-a09c-de8a04575609"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-proyecto-modelos"
  location = "West US"
}

resource "azurerm_mssql_server" "sqlserver" {
  name                         = "servidormodelo123"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = "P@ssw0rd1234!" # cámbialo para producción
}

resource "azurerm_mssql_database" "modelo01" {
  name           = "modelo01"
  server_id      = azurerm_mssql_server.sqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  sku_name       = "Basic"
}

resource "azurerm_mssql_database" "modelo02" {
  name           = "modelo02"
  server_id      = azurerm_mssql_server.sqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  sku_name       = "Basic"
}

resource "azurerm_mssql_database" "modelo03" {
  name           = "modelo03"
  server_id      = azurerm_mssql_server.sqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  sku_name       = "Basic"
}
