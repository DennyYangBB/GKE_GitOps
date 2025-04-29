terraform {
  backend "gcs" {
    bucket = "demo-sre-bucket-2025"
    prefix = "envs/alpha/03_gke"
  }
}
