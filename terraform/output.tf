output "kube_endpoint" {
  value = digitalocean_kubernetes_cluster.k8s_rturatti.endpoint
}

resource "local_file" "kube_config" {
  content = digitalocean_kubernetes_cluster.k8s_rturatti.kube_config.0.raw_config
  filename = "kube_config.yml"
}