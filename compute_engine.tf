resource "google_compute_instance" "vm" {
  name         = "my-instance-terraform"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"

    }
  }
  network_interface {
    network = "default"

  }
}