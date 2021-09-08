resource "aws_s3_bucket" "this" {

  bucket       = var.bucket_name
  content_type = var.content_type
  acl          = var.bucket_acl

  tags = merge(local.common_tags, {
    CreatedAt = time_static.time.rfc3339
  })

  dynamic "versioning" {
    for_each = length(keys(var.versioning)) == 0 ? [] : [var.versioning]
    content {
      enabled    = lookup(versioning.value, "enabled", null)
      mfa_delete = lookup(versioning.value, "mfa_delete", null)
    }
  }
}
