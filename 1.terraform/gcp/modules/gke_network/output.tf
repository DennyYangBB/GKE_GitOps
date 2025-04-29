output "vpc_id" {
  value = google_compute_network.vpc.id
}

output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "vpc_self_link" {
  value = google_compute_network.vpc.self_link
}

output "subnet_id" {
  value = google_compute_subnetwork.subnet.id
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}

output "primary_cidr_range" {
  value = google_compute_subnetwork.subnet.ip_cidr_range
}

output "pods_cidr_range" {
  value = google_compute_subnetwork.subnet.secondary_ip_range.0.ip_cidr_range
}

output "services_cidr_range" {
  value = google_compute_subnetwork.subnet.secondary_ip_range.1.ip_cidr_range
}
