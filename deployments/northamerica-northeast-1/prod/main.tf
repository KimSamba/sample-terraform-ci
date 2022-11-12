terraform {
  backend "gcs" {
    bucket  = "rikkelcloud-terraform-state"
    prefix  = "prod/"
  }
}

provider "google" {
  credentials = var.access_json
  project     = var.project_id
  region      = "northamerica-northeast1"
}

module "this" {
  source = "../../../ecosystem"

  environment = "prod"
}