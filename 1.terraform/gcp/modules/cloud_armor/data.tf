data "google_compute_instance_group" "group" {
  name = var.instance_group
  zone = var.zone
}
