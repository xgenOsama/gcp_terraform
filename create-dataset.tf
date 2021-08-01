#create 1 dataset (configure it as u like)
resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "example_dataset"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  access {
    role          = "OWNER"
    user_by_email = google_service_account.n1x.email
  }

}

resource "google_service_account" "n1x" {
  account_id = "osamamohamed"
}