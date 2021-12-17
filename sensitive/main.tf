terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}


resource "google_project" "my_projects" {
  name         = var.name
  project_id   = var.project_id
}
