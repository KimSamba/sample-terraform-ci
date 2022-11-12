terraform {
  required_version = ">= 1.3"
  required_providers {
    gcp = {
        source = "hashicorp/google"
        version = "~> 4"
    }
  }
}