resource "azurerm_resource_group" "rg16aug" {
  for_each = var.rgvar
  name     = each.value.name
  location = each.value.location
}
# resource "azurerm_storage_account" "sa16aug" {
#   for_each = var.savar
#   name                     = each.value.saname
#   resource_group_name      = each.value.rgname
#   location                 = each.value.salocation
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }
# terraform {
#   backend "azurerm" {
#     # use_cli              = true
#     # use_azuread_auth     = true
#     resource_group_name  = "rgswapnil1"
#     tenant_id            = "edede416-5d9a-4596-8753-39d41dfd9d7d"
#     storage_account_name = "saswapnil1"
#     container_name       = "scswapnil1"
#     key                  = "practice23042026.terraform.tfstate"
#   }
# }