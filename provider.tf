# Specify the provider (GCP, AWS, Azure)
provider "google" {
    credentials = "${file("credentials.json")}"
    project = "cluster-project"
    region = "us-central1"
}