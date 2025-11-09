resource "aws_iam_role_policy" "tfer--App-HealthCheck-role-nls58mbo_DynamoDBStreamReadPolicy" {
  name = "DynamoDBStreamReadPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:GetRecords",
        "dynamodb:GetShardIterator",
        "dynamodb:DescribeStream",
        "dynamodb:ListStreams"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:ap-northeast-2:761111057533:table/deploy-land-status/stream/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "App-HealthCheck-role-nls58mbo"
}

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

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTempla-CodeConnectionsActionRole-f8OJ6928xKbj_CodeConnectionsActionDefaultPolicy" {
  name = "CodeConnectionsActionDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "codestar-connections:UseConnection",
      "Effect": "Allow",
      "Resource": "arn:aws:codeconnections:ap-northeast-2:761111057533:connection/799db1e7-a9a8-4f5a-968d-ded7bdf95918"
    },
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*"
      ]
    },
    {
      "Action": [
        "s3:PutObjectAcl",
        "s3:PutObjectVersionAcl"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTempla-CodeConnectionsActionRole-f8OJ6928xKbj"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-Pus-CodeBuildActionRole-9EnhWu2ta1fQ_CodeBuildActionDefaultPolicy" {
  name = "CodeBuildActionDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:StopBuild"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:ap-northeast-2:761111057533:project/SimpleDockerProject-0ad4639318e3"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-Pus-CodeBuildActionRole-9EnhWu2ta1fQ"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-PushTo-CodePipelineRole-CbJ3VORphpAY_CodePipelineDefaultPolicy" {
  name = "CodePipelineDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*"
      ]
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::761111057533:role/CodePipelineStarterTemplate-Pus-CodeBuildActionRole-9EnhWu2ta1fQ",
        "arn:aws:iam::761111057533:role/CodePipelineStarterTempla-CodeConnectionsActionRole-f8OJ6928xKbj"
      ]
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codepipeline/SimpleDockerService",
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codepipeline/SimpleDockerService:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-PushTo-CodePipelineRole-CbJ3VORphpAY"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-PushToECR-CodeBuildRole-NTvBs6u25Ly9_CodeBuildDefaultPolicy" {
  name = "CodeBuildDefaultPolicy"

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
      "Resource": [
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/SimpleDockerProject-0ad4639318e3:*",
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/SimpleDockerProject-0ad4639318e3"
      ]
    },
    {
      "Action": [
        "codebuild:BatchPutCodeCoverages",
        "codebuild:BatchPutTestCases",
        "codebuild:CreateReport",
        "codebuild:CreateReportGroup",
        "codebuild:UpdateReport"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:ap-northeast-2:761111057533:report-group/SimpleDockerProject-0ad4639318e3-*"
    },
    {
      "Action": [
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-PushToECR-CodeBuildRole-NTvBs6u25Ly9"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-PushToECR-CodeBuildRole-NTvBs6u25Ly9_CodeBuildProjectRoleDefaultPolicy" {
  name = "CodeBuildProjectRoleDefaultPolicy"

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
      "Resource": [
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/SimpleDockerProject-0ad4639318e3",
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/SimpleDockerProject-0ad4639318e3:*"
      ]
    },
    {
      "Action": [
        "codebuild:BatchPutCodeCoverages",
        "codebuild:BatchPutTestCases",
        "codebuild:CreateReport",
        "codebuild:CreateReportGroup",
        "codebuild:UpdateReport"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:ap-northeast-2:761111057533:report-group/SimpleDockerProject-0ad4639318e3-*"
    },
    {
      "Action": [
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*"
      ]
    },
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:CompleteLayerUpload",
        "ecr:InitiateLayerUpload",
        "ecr:PutImage",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:ap-northeast-2:761111057533:repository/simple-docker-service-0ad4639318e3"
    },
    {
      "Action": "ecr:GetAuthorizationToken",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-PushToECR-CodeBuildRole-NTvBs6u25Ly9"
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
