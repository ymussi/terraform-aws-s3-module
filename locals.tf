data "aws_caller_identity" "current" {}

resource "time_static" "time" {}

locals {
  common_tags = {
    Service     = ""
    ManageBy    = "Terraform"
    Environment = format("%s", var.environment)
    UpdatedAt   = time_static.time.rfc3339
    Owner       = var.owner
  }
}