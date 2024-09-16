terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.74.0"
    }
  }
}


provider "azurerm" {
  features {}
}


module "ResourceGroup" {
  source       = "./ResourceGroup"
  base_rg_name = "test-resource-group"
}

module "VirtualNetwork" {
  source              = "./VirtualNetwork"
  base_vn_name        = "first-test"
  resource_group_name = module.ResourceGroup.rg_name_out
  vm_address          = "10.123.0.0/16"
}

module "Subnet" {
  source               = "./Subnet"
  base_sn_name         = "first-example"
  resource_group_name  = module.ResourceGroup.rg_name_out
  virtual_network_name = module.VirtualNetwork.vn_name_out
  subnet_address       = "10.123.1.0/24"
}

module "SecurityGroup" {
  source              = "./SecurityGroup"
  base_sg_name        = "main-group"
  resource_group_name = module.ResourceGroup.rg_name_out
}

module "NetworkSecurityRules" {
  source                      = "./NetworkSecurityRules"
  base_nsr_name               = "allow-access"
  resource_group_name         = module.ResourceGroup.rg_name_out
  network_security_group_name = module.SecurityGroup.nsg_name_out
}

module "SecurityGroupAssociation" {
  source                    = "./SecurityGroupAssociation"
  subnet_id                 = module.Subnet.sn_id_out
  network_security_group_id = module.SecurityGroup.nsg_id_out
}

module "PublicIP" {
  source              = "./PublicIP"
  base_pip_name       = "Example01"
  resource_group_name = module.ResourceGroup.rg_name_out
}

module "NetworkInterface" {
  source               = "./NetworkInterface"
  base_ni_name         = "Sample"
  resource_group_name  = module.ResourceGroup.rg_name_out
  subnet_id            = module.Subnet.sn_id_out
  public_ip_address_id = module.PublicIP.pip_id_out
}

module "SQLServer" {
  source              = "./SqlServer"
  base_ss_name        = "Storage1"
  resource_group_name = module.ResourceGroup.rg_name_out
}

module "SQLDatabase" {
  source        = "./SqlDatabase"
  base_sdb_name = "Storage1"
  server_id     = module.SQLServer.ss_id_out

}

module "policy" {
  source = "./Policy"
}