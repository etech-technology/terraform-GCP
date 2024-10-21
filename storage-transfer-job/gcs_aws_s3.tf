resource "google_storage_transfer_job" "gcs_to_s3_transfer" {
  description = "Transfer data from GCS to AWS S3 bucket using IAM Role"
  status      = "ENABLED"

  schedule {
    schedule_start_date {
      year  = 2024
      month = 10
      day   = 18
    }

    start_time_of_day {
      hours   = 0
      minutes = 1
      seconds = 0
      nanos   = 0
    }
  }

  project = "etechdemo"

  transfer_spec {
    aws_s3_data_source {
      bucket_name = var.aws_s3_bucket_name
      role_arn    = var.aws_role_arn
    }

    gcs_data_sink {
      bucket_name = var.gcs_bucket_name
    }

    object_conditions {
      include_prefixes = [""] # Specify prefix if you only want to transfer specific objects
      exclude_prefixes = []   # Optionally, exclude specific objects
    }

    transfer_options {
      overwrite_objects_already_existing_in_sink = true
    }
  }
}