resource "google_storage_bucket" "test_bucket" {
  name                        = var.bucket_name
  project                     = var.project_id
  location                    = var.bucket_location
  force_destroy               = var.bucket_force_destroy
  uniform_bucket_level_access = true
}

/* resource "google_project" "my_project" {
  name                = var.project_name
  project_id          = var.project_id 
  billing_account     = var.billing_account
  //labels              = var.labels
  // org_id           = var.org_id
} */

resource "google_project_service" "project_services" {
  count                      = length(var.project_services)
  project                    = var.project_id
  service                    = var.project_services[count.index]
  disable_on_destroy         = var.disable_services_on_destroy
  disable_dependent_services = var.disable_dependent_services
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
