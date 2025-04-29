resource "proxmox_vm_qemu" "k8s_node" {
  target_node = var.target_node
  name        = var.node_name
  vmid        = var.vmid
  memory      = var.memory
  cores       = var.cores
  cpu_type    = var.cpu_type
  scsihw      = "virtio-scsi-pci"
  clone       = var.template_name
  full_clone  = true
  onboot      = true
  bios        = "seabios"
  bootdisk    = "scsi0"
  agent       = 1
  automatic_reboot = true

  # Cloud-init settings
  os_type    = "cloud-init"
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = file(var.ssh_key_path)
  ipconfig0  = "ip=dhcp"

  network {
    id       = 0
    model    = "virtio"
    bridge   = var.network_bridge
    firewall = false
  }

  vga {
    type   = "virtio"
    memory = 16
  }

  # System disk
  disk {
    type    = "disk"
    storage = var.storage_pool
    size    = var.disk_size
    format  = "raw"
    slot    = "scsi0"
  }

  # Cloud-init disk
  disk {
    type    = "cloudinit"
    storage = var.storage_pool
    slot    = "ide2"
  }
}