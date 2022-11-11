variable "project_id" {
  description = "The GCP project id"
  type        = string
}

variable "region" {
  default     = "northamerica-northeast1"
  description = "GCP region"
  type        = string
}

variable "access_json" {
  type = string
}