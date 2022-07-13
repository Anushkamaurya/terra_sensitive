provider "google" {
    project =   var.project_id
    region =    var.region
}

terraform {
    backend "gcs" {
        bucket = "project_tfstate"
        prefix = "terraform/state"
    }
}
