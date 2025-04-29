resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.primary_ip_cidr
  region        = var.region
  network       = google_compute_network.vpc.self_link
  secondary_ip_range {
    range_name    = var.subnet_pods_name
    ip_cidr_range = var.pods_ip_cidr
  }
  secondary_ip_range {
    range_name    = var.subnet_services_name
    ip_cidr_range = var.services_ip_cidr
  }
}
