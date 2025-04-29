variable "ci_password" {
  description = "Password of cloudinit vm"
  type        = string
  sensitive   = true
}

variable "pve_node" {
  description = "name of pve node"
  type        = string
}
