variable "gcs_bucket_name" {
  description = "Name of the GCS bucket to transfer data from"
  type        = string
  default     = "etechapp-buckettest-g"
}

variable "aws_s3_bucket_name" {
  description = "Name of the AWS S3 bucket to transfer data to"
  type        = string
  default     = "data-from-gcp-transfer"
}

variable "aws_role_arn" {
  description = "ARN of the AWS IAM Role for transfer"
  type        = string
  default     = "arn:aws:iam::586794438876:role/gcp-toaws-role"
}