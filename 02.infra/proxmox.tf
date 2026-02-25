module "name" {
  source          = "../../terraform-modules/composite/proxmox_infra"
  nfs_address     = "192.168.0.101"
  nfs_export_path = "/Volume1/server_storage"
  nfs_name        = "tnas"
  nfs_content     = [ "iso" ]
  nfs_target_node = [ ]
}