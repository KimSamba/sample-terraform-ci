resource "random_string" "this" {
  length           = 6
  special          = true
  override_special = "/@£$"
}

resource "random_pet" "this" {}

   #tfsec:ignore:google-storage-bucket-encryption-customer-key
resource "google_storage_bucket" "this" {
  name          = "${random_string.this.id}${random_string.this.result}-${var.environment}"
  location      = var.location
  uniform_bucket_level_access = true
  force_destroy = true
}