# terraform-GCP
terraform in gcp

## This repository contains some basics in terraform using google cloud
# Always refer to the Gcloud documentation[link][https://cloud.google.com/sdk/gcloud/reference/config/set]

```hcl
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.71.0"
    }
  }
}

provider "aws" {
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