variable "bucket_name" {
  description = "Google Cloud Storage (GCS) bucket Name."
  type        = string
  default     = "my-bucket-33333"
}

variable "project_id" {
  description = "GCS Project ID."
  type        = string
  default     = "wise-resolver-422510-b6"
}

variable "gcs_location" {
  description = "GCS Location."
  type        = string
  default     = "EU"
}

variable "force_destroy" {
  description = "Delete all objects when deleting bucket."
  type        = bool
  default     = false
}

variable "labels" {
  description = "Labels to assign on the GCS bucket."
   type        = map(string)
   default     = {
    env = "dev"
  }
variable "storage_class" {
  description = <<EOF
The Storage class of the GCS bucket.
Supported Values - STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE.
EOF
  type        = string
  default     = "STANDARD"
}



variable "enable_versioning" {
  description = "Enable GCS Bucket versioning."
  type        = bool
  default     = false
}
