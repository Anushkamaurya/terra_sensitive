/* resource "google_service_account" "default_service_account" {
  account_id   = var.project_sa_name
  display_name = "${var.name} Project Service Account"
  project      = google_project.main.project_id
  // count        = var.create_project_sa ? 1 : 0
} */

/* resource "google_service_account" "service_account" {
  account_id   = var.project_sa_name
  display_name = "${var.name} Project Service Account"
}

resource "google_service_account_iam_binding" "admin-account-iam" {
  service_account_id = google_service_account.service_account.name
  role               = "roles/iam.serviceAccountUser"

  members = [
    "user:beautiandbeast8@gmail.com"
  ]
} */