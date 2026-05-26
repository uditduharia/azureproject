resource "azurerm_resource_group" "resrce" {

    for_each = var.resourceee

    name = each.value.name
  location = each.value.location
  managed_by = each.value.managed_by
  
}