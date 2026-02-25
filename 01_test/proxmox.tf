module "name" {
  source          = "../../terraform-modules/composite/proxmox_test"
  vm_details      = local.vms
  nfs_address     = "192.168.0.101"
  nfs_export_path = "/Volume1/server_storage"
  nfs_name        = "tnas"
  nfs_content     = [ "iso" ] 
  nfs_target_node = [ "pve" ]
}

# output "vm_names" {
#   value = local.vms
# }

# output "Info" {
#   value = module.name.image_data
# }