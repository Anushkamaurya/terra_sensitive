resource "google_project" "my_project" {
  name                = var.name
  project_id          = var.project_id 
  billing_account     = var.billing_account
  //labels              = var.labels
  // org_id           = var.org_id
}


locals {
  project_services = distinct(
    concat(
      [
        "storage.googleapis.com",
        "cloudresourcemanager.googleapis.com",
        "compute.googleapis.com",
        "iam.googleapis.com",
        "serviceusage.googleapis.com",
        "storage-component.googleapis.com",
      ],
      var.project_services
    )
  )
}

resource "google_project_service" "project_services" {
  project                    = var.project_id
  service                    = local.project_services
  disable_on_destroy         = var.disable_services_on_destroy
  disable_dependent_services = var.disable_dependent_services

  depends_on = [
    google_project_service.compute_engine
  ]
}
/* resource "google_project_service" "project" {
  project = var.project_id
  service = "iam.googleapis.com"
  activate_apis               = local.activate_apis
  activate_api_identities     = var.activate_api_identities
  disable_on_destroy         = true //var.disable_services_on_destroy
  disable_dependent_services = true //var.disable_dependent_services
}

locals {
  activate_apis       = var.activate_apis
} */


/* resource "google_service_account" "default_service_account" {
  account_id   = var.project_sa_name
  display_name = "${var.name} Project Service Account"
  project      = google_project.main.project_id
  // count        = var.create_project_sa ? 1 : 0
} */
