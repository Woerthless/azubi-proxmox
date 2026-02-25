variable "proxmox_password" {
  description = "Password for Service Account"
  type        = string
  sensitive   = true
  default     = null
}

variable "proxmox_user" {
  description = "Username for Service Account"
  type        = string
  default     = null
}

variable "proxmox_api_key" {
  description = "API Secret"
  type        = string
  sensitive   = true
  default     = null
}

variable "proxmox_token_id" {
  description = "API Token ID"
  type        = string
  default     = null
}

locals {
  proxmox_user      = var.proxmox_user
  proxmox_password  = var.proxmox_password
  proxmox_endpoint  = "https://192.168.0.38:8006"
  proxmox_api_token = "${var.proxmox_token_id}=${var.proxmox_api_key}"
}