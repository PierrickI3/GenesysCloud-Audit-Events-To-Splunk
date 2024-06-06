resource "aws_s3_bucket" "aws-eventbridge-s3-bucket" {
  bucket        = var.s3_bucket_name
  force_destroy = true
}
