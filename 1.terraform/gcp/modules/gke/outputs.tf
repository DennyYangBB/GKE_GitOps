output "cluster_name" {
  value = google_container_cluster.gke.name
}

output "cluster_endpoint" {
  value = google_container_cluster.gke.endpoint
}

output "kubeconfig_raw" {
  value = <<EOT
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${google_container_cluster.gke.master_auth.0.cluster_ca_certificate }
    server: https://${google_container_cluster.gke.endpoint}
  name: ${google_container_cluster.gke.name}
contexts:
- context:
    cluster: ${google_container_cluster.gke.name}
    user: ${google_container_cluster.gke.name}
  name: ${google_container_cluster.gke.name}
current-context: ${google_container_cluster.gke.name}
kind: Config
preferences: {}
users:
- name: ${google_container_cluster.gke.name}
  user:
    auth-provider:
      config:
        cmd-args: config config-helper --format=json
        cmd-path: gcloud
        expiry-key: '{.credential.token_expiry}'
        token-key: '{.credential.access_token}'
      name: gcp
EOT
}

output "cluster_vpc" {
  value = google_container_cluster.gke.network
}

output "node_pool_name" {
  value = google_container_node_pool.node.name
}

output "node_pool_instance_groups" {
  value = google_container_node_pool.node.instance_group_urls
}
