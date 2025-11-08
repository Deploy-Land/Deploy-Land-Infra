resource "aws_dynamodb_table" "tfer--deploy-land-status" {
  attribute {
    name = "pipelineID"
    type = "S"
  }

  billing_mode                = "PAY_PER_REQUEST"
  deletion_protection_enabled = "false"
  hash_key                    = "pipelineID"
  name                        = "deploy-land-status"

  point_in_time_recovery {
    enabled                 = "false"
    recovery_period_in_days = "0"
  }

  read_capacity    = "0"
  stream_enabled   = "true"
  stream_view_type = "NEW_AND_OLD_IMAGES"
  table_class      = "STANDARD"
  write_capacity   = "0"
}
