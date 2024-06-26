resource "aws_cloudwatch_event_target" "aws-eventbridge-event-rule-target" {
  event_bus_name = "aws.partner/genesys.com/cloud/${var.genesys_cloud_org_id}/${var.event_source_suffix}"
  rule           = aws_cloudwatch_event_rule.aws-eventbridge-event-rule.name
  arn            = aws_kinesis_stream.aws-eventbridge-kinesis-stream.arn
  role_arn       = aws_iam_role.aws-eventbridge-kinesis-target-role.arn
}
