terraform {
  backend "gcs" {
    bucket  = "bucket-for-statefile-48693"
    prefix  = "terraform/uat-state-file"
    credentials = "keys.json"
  }
}

