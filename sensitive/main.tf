terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}


provider "google" {
  credentials = file("mylearning-331213-21e283592fa8.json")

}

resource "google_project" "my_projects" {
  name         = var.name
  project_id   = var.project_id
}
