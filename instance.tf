resource "google_compute_instance" "demo" {
  name         = "${var.environment}-instance"
  machine_type = var.machine_type
  zone         = var.zone
  tags = ["terraform", "gcp"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
network_interface {
    network =  "${google_compute_network.main.name}"
    subnetwork = "${google_compute_subnetwork.public.name}"
    access_config {}
 }
}
