module "gke_cluster" {
  source            = "../../modules/gke"
  region            = var.region
  zone              = var.zone
  cluster_name      = var.cluster_name
  vpc_id            = var.vpc_id
  subnet_id         = var.subnet_id
  node_count        = var.node_count
  node_machine_type = var.node_machine_type
}
