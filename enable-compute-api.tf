# enable Compute API
resource "google_project_service" "project" {
  project = "cluster-project-321522"
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}