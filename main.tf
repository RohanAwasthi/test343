resource "azurerm_resource_group" "rg" {
  name     = "devex-test343-rg"
  location = var.location
  tags     = var.tags
}



resource "azurerm_linux_web_app" "web-app" {
  name                = "test343"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {}
}