# define GCP project name
variable "gcp_project" {
  default = "starlit-road-284109"
  type        = string
  description = "GCP project name"
}

# define GCP region
variable "gcp_region" {
  default = "europe-west2"
  type        = string
  description = "GCP region"
}

# define GCP region
variable "gcp_zone" {
  default = "europe-west1-b"
  type        = string
  description = "GCP zone"
}