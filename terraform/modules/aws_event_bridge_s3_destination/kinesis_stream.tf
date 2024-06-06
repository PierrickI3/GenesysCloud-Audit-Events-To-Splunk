resource "aws_kinesis_stream" "aws-eventbridge-kinesis-stream" {
  name        = "aws-eventbridge-kinesis-stream"
  shard_count = 1
}
