output "kubernetes_cluster_name" {
  value = module.gke_cluster.cluster_name
}

output "kubeconfig" {
  value     = module.gke_cluster.kubeconfig_raw
  sensitive = true
}
