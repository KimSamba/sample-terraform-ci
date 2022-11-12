resource "random_string" "this" {
  length           = 6
  special          = true
  override_special = "/@£$"
}

resource "random_pet" "this" {}

resource "google_storage_bucket" "this" {
  name          = "${random_string.this.id}${random_string.this.result}-${var.environment}"
  location      = var.location
  force_destroy = true
}