# terraform-GCP
terraform in gcp

## This repository contains some basics in terraform using google cloud
# Always refer to the Gcloud documentation[link][https://cloud.google.com/sdk/gcloud/reference/config/set]

```hcl
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.6.0"
    }
  }
}

provider "google" {
  # Configuration options
}

```

```hcl
provider "google" {
  credentials = file("key.json") # do not forget to generate your own service acct key
  project     = "your-choice"
  region      = "your-choice"   # Choose your desired region
  zone        = "your-choice" # Choose your desired zone
}

```
## Mini project
1. Develop a terraform project to provision a google storage bucket 
 `use the terraform registry`
2. Develop a terraform project to create 5 google vm in a project 