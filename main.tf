# VPC
resource "google_compute_network" "vpc" {
  name = var.vpc_name
  description = "VPC desde Service Catalog"
  auto_create_subnetworks = "false"
  mtu = 1460
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name = var.subnet.name
  description = "Subnet desde Service Catalog"
  region = var.region
  network = google_compute_network.vpc.name
  ip_cidr_range = var.ip_cidr_range
}
