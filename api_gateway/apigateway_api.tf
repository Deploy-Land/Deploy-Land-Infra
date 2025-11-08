resource "aws_apigateway_api" "tfer--d0079ju0e7_deploy-land-api" {
  api_key_selection_expression = "$request.header.x-api-key"

  cors_configuration {
    allow_credentials = "false"
    allow_headers     = ["authorization", "content-type", "x-requested-with"]
    allow_methods     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    allow_origins     = ["*", "http://localhost:5173", "http://localhost:5173/", "https://dev.d20iv4pldubgty.amplifyapp.com/"]
    expose_headers    = ["content-length", "x-request-id"]
    max_age           = "3600"
  }

  disable_execute_api_endpoint = "false"
  ip_address_type              = "ipv4"
  name                         = "deploy-land-api"
  protocol_type                = "HTTP"
  route_selection_expression   = "$request.method $request.path"
}
