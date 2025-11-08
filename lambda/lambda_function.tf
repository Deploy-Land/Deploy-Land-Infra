resource "aws_lambda_function" "tfer--App-HealthCheck" {
  architectures = ["x86_64"]

  environment {
    variables = {
      BEANSTALK_ENV_ID    = "e-eqxpbzcbvv"
      BEANSTALK_ENV_NAME  = "Deploy-Land-App-env"
      DISCORD_WEBHOOK_URL = ""
      SLACK_WEBHOOK_URL   = ""
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name = "App-HealthCheck"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/App-HealthCheck"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::761111057533:role/service-role/App-HealthCheck-role-nls58mbo"
  runtime                        = "python3.13"
  skip_destroy                   = "false"
  timeout                        = "123"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--reader" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "reader"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/reader"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::761111057533:role/DynamoDB-reader"
  runtime                        = "python3.13"
  skip_destroy                   = "false"
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--writer" {
  architectures = ["x86_64"]

  environment {
    variables = {
      DISCORD_WEBHOOK_URL = ""
      SLACK_WEBHOOK_URL   = ""
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name = "writer"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/writer"
  }

  memory_size                    = "512"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::761111057533:role/DynamoDB-writer"
  runtime                        = "python3.13"
  skip_destroy                   = "false"
  timeout                        = "30"

  tracing_config {
    mode = "PassThrough"
  }
}
