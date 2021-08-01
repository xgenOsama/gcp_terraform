# create 1 bucket (configure it as u like)
resource "google_storage_bucket" "xgenosama-bucket" {
  name          = "xgenosama-bucket4"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

}