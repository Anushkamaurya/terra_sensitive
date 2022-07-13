terraform {
  required_version = ">= 1.3.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.28.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.28.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}
