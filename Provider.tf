provider "google" {
    credentials =   "mylearning-331213-76a322fb70ef.json"
    project =   var.project_id
    region =    var.region
}

terraform {
    backend "gcs" {
        bucket = "project_tfstate"
        prefix = "terraform/state"
    }
}
