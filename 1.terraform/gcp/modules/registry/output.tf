output "id" {
  description = "The ID of the Artifact Registry repository"
  value       = google_artifact_registry_repository.registry.id
}

output "repository_id" {
  value = google_artifact_registry_repository.registry.repository_id
}

output "repository_url" {
  value = "${google_artifact_registry_repository.registry.location}-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.registry.repository_id}"
}

output "iam_member" {
  value = google_artifact_registry_repository_iam_member.member.member
}

output "iam_role" {
  value = google_artifact_registry_repository_iam_member.member.role
}

output "iam_repository" {
  value = google_artifact_registry_repository_iam_member.member.repository
}
