# Ensure GCP credentials set
# export GOOGLE_APPLICATION_CREDENTIALS="/Users/jacob/Documents/DataAnalytics/credentials/starlit-road/terraform.json"


terraform {

  required_version = ">= 0.12"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.49.0"
    }
  }

}

provider "google" {

  project     = var.gcp_project
  region      = var.gcp_region

}

module "gcs" {

  source = "../modules/gcs/"
  region = var.gcp_region
  
}


# module "gke" {

#   source = "../modules/gke/"
  
# }