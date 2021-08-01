# create a firewall for instance
resource "google_compute_firewall" "http-server" {
  name    = "default-allow-http-terraform"
  network       = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}
# create firewall rule to allow port 8080 on all vms in the vpc
resource "google_compute_firewall" "http-allow-8080" {
  name    = "default-allow-8080-terraform"
  network       = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }
  # target_tags   = ["http-server"]  if not tages role applied to all resources in the network
  source_ranges = ["0.0.0.0/0"]
}