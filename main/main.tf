terraform {
  required_providers {
    google    = {
      source  = var.source
      version = var.version
    }
  }
}

provider "google" {
  credentials = file("mylearning-331213-21e283592fa8.json")

  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = var.name
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20211105"
    }
  }

  network_interface {
    network    =  var.network
    subnetwork =  var.subnetwork
    access_config {
    }
  }
}