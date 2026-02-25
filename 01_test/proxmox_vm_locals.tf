locals {
  base_vm_config = {
    vm_count                    = 1
    vm_cpu_cores                = 2
    vm_memory                   = 8
    vm_disk_size                = 50
    vm_image                    = "AlmaLinux-9.6-x86_64-minimal.iso"
  }
  vms = {
    "mwoerman" = merge(local.base_vm_config, {
        vm_count = 2
        vm_network_devices = {
            lan = {
                bridge = "vmbr0"
            }
        }
    })
  }
}