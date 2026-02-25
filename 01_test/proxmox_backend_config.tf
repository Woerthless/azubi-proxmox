terraform {
  backend "local" {
    path = "./state_files/terraform.tfstate"
  }
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.96.0"
    }
  }
}

provider "proxmox" {
  endpoint = local.proxmox_endpoint
  insecure = true
  # username = local.proxmox_user
  # password = local.proxmox_password
  api_token = local.proxmox_api_token
}

