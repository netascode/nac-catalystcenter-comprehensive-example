terraform {
  required_providers {
    catalystcenter = {
      source  = "CiscoDevNet/catalystcenter"
      version = "0.3.3"
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
  source  = "netascode/nac-catalystcenter/catalystcenter"
  version = "0.2.0"

  yaml_directories      = ["data/"]
  templates_directories = ["data/templates/"]
}