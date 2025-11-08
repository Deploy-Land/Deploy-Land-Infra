resource "aws_lambda_permission" "tfer--AllowEventBridgeToInvoke" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:ap-northeast-2:761111057533:function:writer"
  principal     = "events.amazonaws.com"
  source_arn    = "arn:aws:events:ap-northeast-2:761111057533:rule/get-pipeline-events"
  statement_id  = "AllowEventBridgeToInvoke"
}

resource "aws_lambda_permission" "tfer--cbe7c43b-342e-532a-950d-26c338281112" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:ap-northeast-2:761111057533:function:reader"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:ap-northeast-2:761111057533:d0079ju0e7/*/*/api/status/{pipelineId}"
  statement_id  = "cbe7c43b-342e-532a-950d-26c338281112"
}
