variable "owner" {
  type        = string
  description = "Define a owner of this bucket"
}

variable "environment" {
  type        = string
  description = "Application environment name"
}

variable "bucket_acl" {
  type        = string
  description = "Define a s3 bucket acl"
  default     = "private"
}

variable "bucket_policy" {
  type        = string
  description = "Define a s3 bucket policy"
  default     = ""
}

variable "bucket_name" {
  type       = string
  description = "Define a s3 bucket name"
}

variable "content_type" {
  type       = string
  description = "Define a s3 bucket content_type"
}

variable "versioning" {
  description = "Map containing versioning configuration."
  type        = map(string)
  default     = {}
}