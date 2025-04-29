variable "target_node" {
  description = "Proxmox node to deploy the VM on"
  type        = string
}

variable "node_name" {
  description = "Name of the Kubernetes node"
  type        = string
}

variable "vmid" {
  description = "VM ID"
  type        = number
}

variable "memory" {
  description = "Memory allocation in MB"
  type        = number
  default     = 4096
}

variable "cores" {
  description = "Number of CPU cores"
  type        = number
  default     = 2
}

variable "cpu_type" {
  description = "CPU type"
  type        = string
  default     = "host"
}

variable "template_name" {
  description = "Name of the template to clone"
  type        = string
}

variable "ci_user" {
  description = "Cloud-init user"
  type        = string
  default     = "ubuntu"
}

variable "ci_password" {
  description = "Cloud-init password"
  type        = string
  sensitive   = true
}

variable "ssh_key_path" {
  description = "Path to SSH public key"
  type        = string
}

variable "network_bridge" {
  description = "Network bridge to attach to"
  type        = string
  default     = "vmbr0"
}

variable "storage_pool" {
  description = "Storage pool for disks"
  type        = string
  default     = "local-lvm"
}

variable "disk_size" {
  description = "Main disk size"
  type        = string
  default     = "20G"
}
