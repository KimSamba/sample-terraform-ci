terraform {
  backend "gcs" {
    bucket = "rikkelcloud-terraform-state"
    prefix = "prod/"
  }
  required_version = ">= 1.3"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4"
    }
  }
}

provider "google" {
  credentials = var.access_json
  project     = var.project_id
  region      = "northamerica-northeast1"
}

module "this" {
  source = "../../.."

  environment = "prod"
}
