resource "aws_kinesis_firehose_delivery_stream" "aws-eventbridge-kinesis-delivery-stream" {
  name        = "aws-eventbridge-kinesis-delivery-stream"
  destination = "extended_s3"

  extended_s3_configuration {
    role_arn           = aws_iam_role.aws-eventbridge-s3-target-role.arn
    bucket_arn         = aws_s3_bucket.aws-eventbridge-s3-bucket.arn
    compression_format = "UNCOMPRESSED"
    prefix             = var.s3_firehose_prefix
    buffering_interval = var.s3_firehose_buffer_interval
    buffering_size     = var.s3_firehose_buffer_size
    dynamic_partitioning_configuration {
      enabled = false
    }
  }

  kinesis_source_configuration {
    kinesis_stream_arn = aws_kinesis_stream.aws-eventbridge-kinesis-stream.arn
    role_arn           = aws_iam_role.aws-eventbridge-firehouse-target-role.arn
  }
}
