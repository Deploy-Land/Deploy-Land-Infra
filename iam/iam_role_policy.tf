
resource "aws_iam_role_policy" "tfer--App-HealthCheck-role-nls58mbo_ElasticBeanstalkReadPolicy" {
  name = "ElasticBeanstalkReadPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "elasticbeanstalk:DescribeEnvironments",
        "elasticbeanstalk:DescribeEnvironmentHealth",
        "elasticbeanstalk:DescribeConfigurationSettings"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "App-HealthCheck-role-nls58mbo"
}


resource "aws_iam_role_policy" "tfer--DynamoDB-writer_Allow-Bedrock-Invoke" {
  name = "Allow-Bedrock-Invoke"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "bedrock:InvokeModel",
        "bedrock:InvokeModelWithResponseStream"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:bedrock:ap-northeast-2::foundation-model/anthropic.claude-3-5-sonnet-20240620-v1:0"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "DynamoDB-writer"
}

resource "aws_iam_role_policy" "tfer--DynamoDB-writer_BedrockInvokePolicy" {
  name = "BedrockInvokePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "bedrock:InvokeModel",
        "bedrock:InvokeModelWithResponseStream"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:bedrock:ap-northeast-2:*:foundation-model/anthropic.claude-3-5-sonnet-20240620-v1:0"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "DynamoDB-writer"
}

resource "aws_iam_role_policy" "tfer--DynamoDB-writer_Claude4BedrockAccess" {
  name = "Claude4BedrockAccess"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "bedrock:InvokeModel",
      "Effect": "Allow",
      "Resource": "arn:aws:bedrock:*::foundation-model/anthropic.*"
    },
    {
      "Action": [
        "aws-marketplace:ViewSubscriptions",
        "aws-marketplace:Subscribe"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "DynamoDB-writer"
}

resource "aws_iam_role_policy" "tfer--app2-eb-role_Allow-CodePipeline-to-EventBridge" {
  name = "Allow-CodePipeline-to-EventBridge"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "events:PutEvents",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "app2-eb-role"
}

resource "aws_iam_role_policy" "tfer--app2-eb-role_Allow-GitHub-Connection-Use" {
  name = "Allow-GitHub-Connection-Use"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "codeconnections:UseConnection",
      "Effect": "Allow",
      "Resource": "arn:aws:codeconnections:ap-northeast-2:761111057533:connection/799db1e7-a9a8-4f5a-968d-ded7bdf95918"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "app2-eb-role"
}

resource "aws_iam_role_policy" "tfer--app2-eb-role_ElasticBeanstalkLambdaAccess" {
  name = "ElasticBeanstalkLambdaAccess"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:UpdateFunctionCode",
        "lambda:UpdateFunctionConfiguration",
        "lambda:GetFunctionConfiguration",
        "lambda:InvokeFunction",
        "lambda:PublishVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:ap-northeast-2:761111057533:function:App-HealthCheck"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "app2-eb-role"
}

resource "aws_iam_role_policy" "tfer--app2-eb-role_ElasticBeanstalkLoggingPolicy" {
  name = "ElasticBeanstalkLoggingPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "app2-eb-role"
}

