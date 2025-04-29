output "vpc_id" {
  value = module.gke_network.vpc_id
}

output "vpc_name" {
  value = module.gke_network.vpc_name
}

output "vpc_self_link" {
  value = module.gke_network.vpc_self_link
}

output "subnet_id" {
  value = module.gke_network.subnet_id
}

output "subnet_name" {
  value = module.gke_network.subnet_name
}

output "primary_cidr_range" {
  value = module.gke_network.primary_cidr_range
}

output "pods_cidr_range" {
  value = module.gke_network.pods_cidr_range
}

output "services_cidr_range" {
  value = module.gke_network.services_cidr_range
}
