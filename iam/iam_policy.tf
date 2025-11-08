
resource "aws_iam_policy" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-app2-eb-pipeline" {
  description = "Policy used in trust relationship with CodePipeline for service role"
  name        = "AWSCodePipelineServiceRole-ap-northeast-2-app2-eb-pipeline"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetBucketVersioning",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "761111057533"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-ap-northeast-2-00c4b2fd61e9-4566-864f-fad2326f7c47"
      ],
      "Sid": "AllowS3BucketAccess"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:PutObjectAcl",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceAccount": "761111057533"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-ap-northeast-2-00c4b2fd61e9-4566-864f-fad2326f7c47/*"
      ],
      "Sid": "AllowS3ObjectAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}


resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-1eb4c717-94c4-4b59-bc8a-a2359e67b2a9" {
  name = "AWSLambdaBasicExecutionRole-1eb4c717-94c4-4b59-bc8a-a2359e67b2a9"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:ap-northeast-2:761111057533:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/lambda/App-HealthCheck:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}


resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-80c9f1c1-5966-4509-9da3-745840439e59" {
  name = "AWSLambdaBasicExecutionRole-80c9f1c1-5966-4509-9da3-745840439e59"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:ap-northeast-2:761111057533:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/lambda/reader:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-cb056cbd-e394-49e9-8a94-d9bb964b1b4b" {
  name = "AWSLambdaBasicExecutionRole-cb056cbd-e394-49e9-8a94-d9bb964b1b4b"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:ap-northeast-2:761111057533:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/lambda/writer:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}


resource "aws_iam_policy" "tfer--Amazon_EventBridge_Invoke_Lambda_2059101862" {
  name = "Amazon_EventBridge_Invoke_Lambda_2059101862"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:ap-northeast-2:761111057533:function:writer"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Amazon_EventBridge_Invoke_Lambda_App_Healthcheck" {
  name = "Amazon_EventBridge_Invoke_Lambda_App_Healthcheck"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:ap-northeast-2:761111057533:function:App-HealthCheck"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}


resource "aws_iam_policy" "tfer--CodeBuildBasePolicy-sample-app2-eb-build-ap-northeast-2" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildBasePolicy-sample-app2-eb-build-ap-northeast-2"
  path        = "/service-role/"

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
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/sample-app2-eb-build",
        "arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/sample-app2-eb-build:*"
      ]
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetObjectVersion",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipeline-ap-northeast-2-*"
      ]
    },
    {
      "Action": [
        "codebuild:CreateReportGroup",
        "codebuild:CreateReport",
        "codebuild:UpdateReport",
        "codebuild:BatchPutTestCases",
        "codebuild:BatchPutCodeCoverages"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:ap-northeast-2:761111057533:report-group/sample-app2-eb-build-*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}


resource "aws_iam_policy" "tfer--CodeBuildCachePolicy-sample-app2-build-ap-northeast-2" {
  description = "Policy used in trust relationship with CodeBuild"
  name        = "CodeBuildCachePolicy-sample-app2-build-ap-northeast-2"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::deploy-land-tokyo",
        "arn:aws:s3:::deploy-land-tokyo/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}


resource "aws_iam_policy" "tfer--CodePipeline-CodeBuild-ap-northeast-2-app2" {
  description = "Policy used in trust relationship with CodePipeline for CodeBuild Action"
  name        = "CodePipeline-CodeBuild-ap-northeast-2-app2"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:*:761111057533:project/sample-app-build2"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--CodePipeline-CodeBuild-ap-northeast-2-app2-eb-pipeline" {
  description = "Policy used in trust relationship with CodePipeline for CodeBuild Action"
  name        = "CodePipeline-CodeBuild-ap-northeast-2-app2-eb-pipeline"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:BatchGetBuildBatches",
        "codebuild:StartBuildBatch"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codebuild:*:761111057533:project/sample-app2-eb-build"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}


resource "aws_iam_policy" "tfer--CodePipeline-CodeConnections-ap-northeast-2-app2-eb-pipeline" {
  description = "Policy used in trust relationship with CodePipeline for CodeConnections Action"
  name        = "CodePipeline-CodeConnections-ap-northeast-2-app2-eb-pipeline"
  path        = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codeconnections:UseConnection",
        "codestar-connections:UseConnection"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:codestar-connections:*:761111057533:connection/799db1e7-a9a8-4f5a-968d-ded7bdf95918",
        "arn:aws:codeconnections:*:761111057533:connection/799db1e7-a9a8-4f5a-968d-ded7bdf95918"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

