module "k8s_control_plane" {
  source        = "./modules/k8s"
  target_node   = var.pve_node
  node_name     = "k8s-controlplane"
  vmid          = 206
  memory        = 4096
  cores         = 2
  template_name = "ubuntu-2204"
  ci_password   = var.ci_password
  ssh_key_path  = "~/.ssh/id_rsa.pub"
}

module "k8s_node1" {
  source        = "./modules/k8s"
  target_node   = var.pve_node
  node_name     = "k8s1"
  vmid          = 207
  memory        = 4096
  cores         = 2
  template_name = "ubuntu-2204"
  ci_password   = var.ci_password
  ssh_key_path  = "~/.ssh/id_rsa.pub"
}

