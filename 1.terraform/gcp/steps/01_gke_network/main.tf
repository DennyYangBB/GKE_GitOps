module "gke_network" {
  source               = "../../modules/gke_network"
  region               = var.region
  vpc_name             = var.vpc_name
  subnet_name          = var.subnet_name
  primary_ip_cidr      = var.primary_ip_cidr
  subnet_pods_name     = var.subnet_pods_name
  pods_ip_cidr         = var.pods_ip_cidr
  subnet_services_name = var.subnet_services_name
  services_ip_cidr     = var.services_ip_cidr
}
