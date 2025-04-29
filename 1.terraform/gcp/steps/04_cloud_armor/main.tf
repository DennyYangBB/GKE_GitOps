module "cloud_armor" {
  source         = "../../modules/cloud_armor"
  allow_ip       = var.allow_ip
  policy_name    = var.policy_name
  env            = var.env
  instance_group = var.instance_group
  zone           = var.zone
}

