terraform {
  backend "gcs" {
    bucket = "demo-sre-bucket-2025"
    prefix = "envs/alpha/04_cloud_armor"
  }
}
