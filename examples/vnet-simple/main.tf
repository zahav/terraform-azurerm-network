# ---------------------------------------------------------------------------------------------------------------------
# Configure the Azure Provider
# ---------------------------------------------------------------------------------------------------------------------

provider "azurerm" {
  features {}

  # Configure Terraform to use a specific Subscription
  # subscription_id = "00000000-0000-0000-0000-000000000000"

  # Disable Terraform usage analytics being sent to Microsoft
  # disable_terraform_partner_id = true
}

data azurerm_resource_group "rg" {
  name = var.resource_group_name
}

# ---------------------------------------------------------------------------------------------------------------------
# Create a simple Virtual Network
# ---------------------------------------------------------------------------------------------------------------------

module "simple_network" {
  source = "../../modules/virtual-network"

  vnet_name           = var.vnet_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space       = var.address_space
  subnet_names        = var.subnet_names
  subnet_prefixes     = var.subnet_prefixes
  dns_servers         = var.dns_servers

  depends_on = [data.azurerm_resource_group.rg]
}