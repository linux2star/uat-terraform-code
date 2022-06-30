provider "google" {
  project = var.project_name
  region  = var.region
  zone    = var.zone
  credentials = "keys.json"
}
