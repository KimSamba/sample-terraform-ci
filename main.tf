terraform {
  # backend "gcs" {
  #   bucket  = "rikkelcloud-terraform-state"
  #   prefix  = "terraform/state"
  # }
}

provider "google" {
  credentials = jsonencode(var.access_json)
  project = var.project_id
  region  = var.region
}

resource "random_string" "this" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "random_pet" "this" {
  prefix = random_string.this.result
}

resource "google_storage_bucket" "this" {
  name          = random_string.this.id
  location      = "NORTHAMERICA-NORTHEAST1"
  force_destroy = true
}