resource "aws_apigateway_route" "tfer--civd0kj" {
  api_id             = "d0079ju0e7"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "GET /api/status/LATEST_EXECUTION"
}

resource "aws_apigateway_route" "tfer--g0wu7i2" {
  api_id             = "d0079ju0e7"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "GET /api/status/{pipelineId}"
  target             = "integrations/egbdn6n"
}

resource "aws_apigateway_route" "tfer--k9lply6" {
  api_id             = "d0079ju0e7"
  api_key_required   = "false"
  authorization_type = "NONE"
  route_key          = "ANY /api/status/LATEST_EXECUTION"
}
