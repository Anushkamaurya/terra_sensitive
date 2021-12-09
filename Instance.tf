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

  project = "mylearning-331213"
  region  = "asia-south1"
  zone    = "asia-south1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraforminstance"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20211105"
    }
  }

  network_interface {
    network = "mylearning-vpc1"
    subnetwork = "subnet1"
    access_config {
    }
  }
}