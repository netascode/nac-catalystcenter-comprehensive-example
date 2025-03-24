terraform {
  required_providers {
    catalystcenter = {
      source  = "CiscoDevNet/catalystcenter"
      version = "0.2.2"
    }
  }
}

provider "catalystcenter" {
  username    = "username"
  password    = "password"
  url         = "https://dnac.url"
  max_timeout = 600
}

module "catalyst_center" {
  source = "git::https://www.github.com/netascode/terraform-catalystcenter-nac-catalystcenter.git?ref=v0.0.1-beta1"

  yaml_directories      = ["data/"]
  templates_directories = ["data/templates/"]
}