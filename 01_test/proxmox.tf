
# module "infra" {
#   source = "../02.infra"
# }


module "vms" {
  source          = "../../terraform-modules/composite/proxmox_test"
  vm_details      = local.vms
  # depends_on = [ module.infra ]
}

# output "vm_names" {
#   value = local.vms
# }

# output "Info" {
#   value = module.name.image_data
# }