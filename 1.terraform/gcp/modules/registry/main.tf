resource "google_artifact_registry_repository" "registry" {
  provider      = google
  location      = var.region
  repository_id = var.repo_name
  format        = "DOCKER"
  description   = "Repository for GKE workloads"
}

resource "google_artifact_registry_repository_iam_member" "member" {
  location   = var.region
  repository = google_artifact_registry_repository.registry.repository_id
  role       = "roles/artifactregistry.reader"
  member     = "serviceAccount:${data.google_service_account.account.email}"
}
