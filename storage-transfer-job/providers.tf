provider "google" {
  credentials = file("key.json")
  project     = "etechdemo"
  region      = "us-central1"   # Choose your desired region
  zone        = "us-central1-a" # Choose your desired zone
}

provider "aws" {
  region = "us-east-2" # Change to your preferred region
}