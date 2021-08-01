resource "google_compute_instance" "public" {
  name         = "virtual-machine-from-terraform"
  machine_type = "f1-micro"
  zone         = "eu-west-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  
  network_interface {
    network = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet1.name
    network_ip = "10.0.1.14"
   access_config {
     // Include this section to give the VM an external ip address
   }
  }


    metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>hello form osama</h1></body></html>' | sudo tee /var/www/html/index.html"

    // Apply the firewall rule to allow external IPs to access this instance
    tags = ["http-server"]
}
# private image
resource "google_compute_instance" "private" {
  name         = "virtual-machine-from-terraform"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
      network = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet2.name
    network_ip = "10.0.2.14"
  }

    # metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>hello form osama</h1></body></html>' | sudo tee /var/www/html/index.html"

    // Apply the firewall rule to allow external IPs to access this instance
    tags = ["http-server"]
}