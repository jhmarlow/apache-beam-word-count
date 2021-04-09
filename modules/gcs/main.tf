resource "google_storage_bucket" "test-bucket" {
  name          = "jacobs-terraform-test-bucket"
  location      = var.region
  force_destroy = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "flask-bucket" {
  name          = "jacobs-flask-app-bucket"
  location      = var.region
  force_destroy = true
  uniform_bucket_level_access = true
}
