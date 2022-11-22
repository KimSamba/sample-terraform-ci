variable "environment" {
  type        = string
  description = "Type of environment"
}

variable "location" {
  type        = string
  description = "Location for the bucket"
  default     = "NORTHAMERICA-NORTHEAST1"
}
