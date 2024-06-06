# Genesys Cloud variables

integration_name    = "Audit Events EventBridge Source"
event_source_suffix = "conversation-detail-events"
# Event topics to subsribe to. Possible values can be found at https://developer.genesys.cloud/api/rest/v2/notifications/available_topics
topic_filters = [
  "v2.routing.queues.{id}.users"
]

# AWS variables

s3_bucket_name = "analytics-events-bucket-pierrick"
# Events will appear under this directory in S3
s3_firehose_prefix = ""
# Events will take at least s3_firehose_buffer_interval seconds to appear in S3. 60 seconds is the minumum
s3_firehose_buffer_interval = 60
# Buffer size in MB. Events will be delivered to S3 if the total size in the buffer is greater than this number
# or at least s3_firehose_buffer_interval seconds has elapsed, whatever happens first
s3_firehose_buffer_size = 1

# Common variables

# Region of the AWS account
aws_account_region = "eu-central-1"