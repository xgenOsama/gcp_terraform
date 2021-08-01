resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "eu-west-1"
  network       = google_compute_network.vpc_network.id
}
resource "google_compute_subnetwork" "subnet2" {
  name          = "subnet2"
  ip_cidr_range = "10.0.2.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}
