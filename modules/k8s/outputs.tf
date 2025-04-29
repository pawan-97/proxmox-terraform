output "ip_address" {
  description = "VM IP address"
  value       = proxmox_vm_qemu.k8s_node.default_ipv4_address
}
