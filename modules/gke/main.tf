resource "google_container_cluster" "gke_cluster" {
  name     = "my-gke-cluster"
  location = "europe-west2"
  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "node_pool" {
  name       = "my-node-pool"
  location   = "europe-west2"
  cluster    = google_container_cluster.gke_cluster.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-micro" # medium

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = "orchestration@starlit-road-284109.iam.gserviceaccount.com"
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}