output "control_plane_ip" {
  description = "Control plane node IP address"
  value       = module.k8s_control_plane.ip_address
}

output "node1_ip" {
  description = "Worker node 1 IP address"
  value       = module.k8s_node1.ip_address
}