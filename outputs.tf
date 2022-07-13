/* output "project_name" {
  value = google_project.main.name
} */

output "project_id" {
  value = google_project.project.project_id
}

/* output "service_account_id" {
  value       = google_service_account.service_account.account_id
  description = "The id of the default service account"
}

output "service_account_display_name" {
  value       = google_service_account.service_account.display_name
  description = "The display name of the default service account"
}

output "service_account_email" {
  value       = google_service_account.service_account.email
  description = "The email of the default service account"
}

output "service_account_name" {
  value       = google_service_account.service_account.name
  description = "The fully-qualified name of the default service account"
} */
