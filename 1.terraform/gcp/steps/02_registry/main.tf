module "registry" {
  source       = "../../modules/registry"
  project_id   = var.project_id
  region       = var.region
  repo_name    = var.repo_name
  account_cicd = var.account_cicd
}
