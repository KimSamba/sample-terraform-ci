terraform {
  backend "gcs" {
    bucket  = "rikkelcloud-terraform-state"
    prefix  = "dev/"
  }
}

provider "google" {
  credentials = var.access_json
  project     = var.project_id
  region      = "northamerica-northeast1"
}
