resource "digitalocean_kubernetes_cluster" "k8s_rturatti" {
  name   = "k8s-${var.k8s_name}"
  region = var.do_region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.22.8-do.1"

  node_pool {
    name       = "${var.k8s_name_pool}-pool"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}

resource "digitalocean_kubernetes_node_pool" "node_premium" {
  cluster_id = digitalocean_kubernetes_cluster.k8s_rturatti.id

  name       = "backend-pool"
  size       = "s-4vcpu-8gb"
  node_count = 2
  tags       = ["backend"]
}