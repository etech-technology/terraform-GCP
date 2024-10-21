provider "google" {
  credentials = file("key.json")
  project     = "etech-infra-test"
  region      = "us-central1"
  zone        = "us-central1-a"
}

