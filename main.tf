terraform {
  required_providers {
    catalystcenter = {
      source  = "CiscoDevNet/catalystcenter"
      version = "0.4.5"
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
  version = "0.3.0"

  yaml_directories      = ["data/"]
  templates_directories = ["data/templates/"]

  use_bulk_api = true
}