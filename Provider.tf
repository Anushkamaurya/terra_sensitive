provider "google" {
    project =   var.project_id
    region =    var.region
}

terraform {
    backend "gcs" {
        bucket = var.bucket_name
        prefix = "terraform/state"
    }
}