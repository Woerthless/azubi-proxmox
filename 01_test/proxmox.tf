module "name" {
  source          = "../../terraform-modules/composite/proxmox_test"
  vm_details      = local.vms
}

# output "vm_names" {
#   value = local.vms
# }

# output "Info" {
#   value = module.name.image_data
# }