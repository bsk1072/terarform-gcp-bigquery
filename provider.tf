provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "concrete-spider-293815"
  region      = "us-central1"
  zone        = "us-central1-a"
}
