resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-app2" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "761111057533"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Sid": "CodePipelineTrustPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/AWSCodePipelineServiceRole-ap-northeast-2-app2", "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeBuild-ap-northeast-2-app2", "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeConnections-ap-northeast-2-app2"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-ap-northeast-2-app2"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-app2-eb-pipeline-fail" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "761111057533"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Sid": "CodePipelineTrustPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "Codepipeline-Connection-fail-test"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"codeconnections:UseConnection\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codeconnections:ap-northeast-2:761111057533:connection/799db1e7-a9a8-4f5a-968d-ded7bdf95918\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/AWSCodePipelineServiceRole-ap-northeast-2-app2-eb-pipeline-fail-case-test", "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeBuild-ap-northeast-2-app2-eb-pipeline-fail-case-test", "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-ap-northeast-2-app2-eb-pipeline-fail"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAPIGateway" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ops.apigateway.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The Service Linked Role is used by Amazon API Gateway."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCostOptimizationHub" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cost-optimization-hub.bcm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Cost Optimization Hub to retrieve organization information and collect optimization-related data and metadata."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CostOptimizationHubServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCostOptimizationHub"
  path                 = "/aws-service-role/cost-optimization-hub.bcm.amazonaws.com/"
}


resource "aws_iam_role" "tfer--AWSServiceRoleForResourceExplorer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "resource-explorer-2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSResourceExplorerServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForResourceExplorer"
  path                 = "/aws-service-role/resource-explorer-2.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSSO" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sso.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSSO"
  path                 = "/aws-service-role/sso.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--Amazon_EventBridge_Invoke_Lambda_2059101862" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "761111057533",
          "aws:SourceArn": "arn:aws:events:ap-northeast-2:761111057533:rule/get-pipeline-events"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Sid": "TrustEventBridgeService"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/Amazon_EventBridge_Invoke_Lambda_2059101862"]
  max_session_duration = "3600"
  name                 = "Amazon_EventBridge_Invoke_Lambda_2059101862"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--Amazon_EventBridge_Invoke_Lambda_App_Healthcheck" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "761111057533",
          "aws:SourceArn": "arn:aws:events:ap-northeast-2:761111057533:rule/Healthcheck"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Sid": "TrustEventBridgeService"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/Amazon_EventBridge_Invoke_Lambda_App_Healthcheck"]
  max_session_duration = "3600"
  name                 = "Amazon_EventBridge_Invoke_Lambda_App_Healthcheck"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--App-HealthCheck-role-nls58mbo" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "DynamoDBStreamReadPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"dynamodb:GetRecords\",\"dynamodb:GetShardIterator\",\"dynamodb:DescribeStream\",\"dynamodb:ListStreams\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:dynamodb:ap-northeast-2:761111057533:table/deploy-land-status/stream/*\"}]}"
  }

  inline_policy {
    name   = "ElasticBeanstalkReadPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"elasticbeanstalk:DescribeEnvironments\",\"elasticbeanstalk:DescribeEnvironmentHealth\",\"elasticbeanstalk:DescribeConfigurationSettings\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/AWSLambdaBasicExecutionRole-1eb4c717-94c4-4b59-bc8a-a2359e67b2a9"]
  max_session_duration = "3600"
  name                 = "App-HealthCheck-role-nls58mbo"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTempla-CodeConnectionsActionRole-f8OJ6928xKbj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::761111057533:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodeConnectionsActionDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"codestar-connections:UseConnection\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codeconnections:ap-northeast-2:761111057533:connection/799db1e7-a9a8-4f5a-968d-ded7bdf95918\"},{\"Action\":[\"s3:Abort*\",\"s3:DeleteObject*\",\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\",\"s3:PutObject\",\"s3:PutObjectLegalHold\",\"s3:PutObjectRetention\",\"s3:PutObjectTagging\",\"s3:PutObjectVersionTagging\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*\"]},{\"Action\":[\"s3:PutObjectAcl\",\"s3:PutObjectVersionAcl\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTempla-CodeConnectionsActionRole-f8OJ6928xKbj"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-Pus-CodeBuildActionRole-9EnhWu2ta1fQ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::761111057533:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodeBuildActionDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\",\"codebuild:StopBuild\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codebuild:ap-northeast-2:761111057533:project/SimpleDockerProject-0ad4639318e3\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-Pus-CodeBuildActionRole-9EnhWu2ta1fQ"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-PushTo-CodePipelineRole-CbJ3VORphpAY" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodePipelineDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:Abort*\",\"s3:DeleteObject*\",\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\",\"s3:PutObject\",\"s3:PutObjectLegalHold\",\"s3:PutObjectRetention\",\"s3:PutObjectTagging\",\"s3:PutObjectVersionTagging\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*\"]},{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::761111057533:role/CodePipelineStarterTemplate-Pus-CodeBuildActionRole-9EnhWu2ta1fQ\",\"arn:aws:iam::761111057533:role/CodePipelineStarterTempla-CodeConnectionsActionRole-f8OJ6928xKbj\"]},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codepipeline/SimpleDockerService\",\"arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codepipeline/SimpleDockerService:*\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-PushTo-CodePipelineRole-CbJ3VORphpAY"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-PushToECR-CodeBuildRole-NTvBs6u25Ly9" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodeBuildDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/SimpleDockerProject-0ad4639318e3:*\",\"arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/SimpleDockerProject-0ad4639318e3\"]},{\"Action\":[\"codebuild:BatchPutCodeCoverages\",\"codebuild:BatchPutTestCases\",\"codebuild:CreateReport\",\"codebuild:CreateReportGroup\",\"codebuild:UpdateReport\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codebuild:ap-northeast-2:761111057533:report-group/SimpleDockerProject-0ad4639318e3-*\"},{\"Action\":[\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*\"]}]}"
  }

  inline_policy {
    name   = "CodeBuildProjectRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/SimpleDockerProject-0ad4639318e3\",\"arn:aws:logs:ap-northeast-2:761111057533:log-group:/aws/codebuild/SimpleDockerProject-0ad4639318e3:*\"]},{\"Action\":[\"codebuild:BatchPutCodeCoverages\",\"codebuild:BatchPutTestCases\",\"codebuild:CreateReport\",\"codebuild:CreateReportGroup\",\"codebuild:UpdateReport\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codebuild:ap-northeast-2:761111057533:report-group/SimpleDockerProject-0ad4639318e3-*\"},{\"Action\":[\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-7srqttnlygma/*\"]},{\"Action\":[\"ecr:BatchCheckLayerAvailability\",\"ecr:CompleteLayerUpload\",\"ecr:InitiateLayerUpload\",\"ecr:PutImage\",\"ecr:UploadLayerPart\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:ecr:ap-northeast-2:761111057533:repository/simple-docker-service-0ad4639318e3\"},{\"Action\":\"ecr:GetAuthorizationToken\",\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-PushToECR-CodeBuildRole-NTvBs6u25Ly9"
  path                 = "/"
}

resource "aws_iam_role" "tfer--DynamoDB-reader" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Lambda functions to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "DynamoDB-reader"
  path                 = "/"
}

resource "aws_iam_role" "tfer--DynamoDB-writer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Deploy land DynamoDB writer lambda.\nRead Pipeline for get jobs"

  inline_policy {
    name   = "Allow-Bedrock-Invoke"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"bedrock:InvokeModel\",\"bedrock:InvokeModelWithResponseStream\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:bedrock:ap-northeast-2::foundation-model/anthropic.claude-3-5-sonnet-20240620-v1:0\"]}]}"
  }

  inline_policy {
    name   = "BedrockInvokePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"bedrock:InvokeModel\",\"bedrock:InvokeModelWithResponseStream\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:bedrock:ap-northeast-2:*:foundation-model/anthropic.claude-3-5-sonnet-20240620-v1:0\"]}]}"
  }

  inline_policy {
    name   = "Claude4BedrockAccess"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"bedrock:InvokeModel\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:bedrock:*::foundation-model/anthropic.*\"},{\"Action\":[\"aws-marketplace:ViewSubscriptions\",\"aws-marketplace:Subscribe\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSCodePipeline_ReadOnlyAccess", "arn:aws:iam::aws:policy/AWSMarketplaceFullAccess", "arn:aws:iam::aws:policy/AmazonBedrockFullAccess", "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "DynamoDB-writer"
  path                 = "/"
}

resource "aws_iam_role" "tfer--Github-OIDC-Deploy-Land" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "token.actions.githubusercontent.com:aud": "sts.amazonaws.com"
        },
        "StringLike": {
          "token.actions.githubusercontent.com:sub": [
            "repo:Deploy-Land/*",
            "repo:Deploy-Land/*"
          ]
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::761111057533:oidc-provider/token.actions.githubusercontent.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "Github-OIDC-Deploy-Land"
  path                 = "/"
}

resource "aws_iam_role" "tfer--app2-eb-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "761111057533"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Sid": "CodePipelineTrustPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "Allow-CodePipeline-to-EventBridge"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"events:PutEvents\",\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  inline_policy {
    name   = "Allow-GitHub-Connection-Use"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"codeconnections:UseConnection\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codeconnections:ap-northeast-2:761111057533:connection/799db1e7-a9a8-4f5a-968d-ded7bdf95918\"}]}"
  }

  inline_policy {
    name   = "ElasticBeanstalkLambdaAccess"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"lambda:UpdateFunctionCode\",\"lambda:UpdateFunctionConfiguration\",\"lambda:GetFunctionConfiguration\",\"lambda:InvokeFunction\",\"lambda:PublishVersion\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:lambda:ap-northeast-2:761111057533:function:App-HealthCheck\"}]}"
  }

  inline_policy {
    name   = "ElasticBeanstalkLoggingPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/AWSCodePipelineServiceRole-ap-northeast-2-app2-eb-pipeline", "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeBuild-ap-northeast-2-app2-eb-pipeline", "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeConnections-ap-northeast-2-app2-eb-pipeline", "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk"]
  max_session_duration = "3600"
  name                 = "app2-eb-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--aws-elasticbeanstalk-ec2-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows your environment's EC2 instances to perform operations required for your application."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker", "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier", "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"]
  max_session_duration = "3600"
  name                 = "aws-elasticbeanstalk-ec2-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--aws-elasticbeanstalk-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticbeanstalk.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows access to other AWS service resources that are required to create and manage environments."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy", "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"]
  max_session_duration = "3600"
  name                 = "aws-elasticbeanstalk-service-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--codebuild-build-project-2-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-build-project-2-ap-northeast-2"]
  max_session_duration = "3600"
  name                 = "codebuild-build-project-2-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-bulid-project-2-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-bulid-project-2-ap-northeast-2"]
  max_session_duration = "3600"
  name                 = "codebuild-bulid-project-2-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-sample-app-build2-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-sample-app-build2-ap-northeast-2"]
  max_session_duration = "3600"
  name                 = "codebuild-sample-app-build2-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-sample-app2-build-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-sample-app2-build-ap-northeast-2", "arn:aws:iam::761111057533:policy/service-role/CodeBuildCachePolicy-sample-app2-build-ap-northeast-2", "arn:aws:iam::aws:policy/AWSAppRunnerFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess", "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"]
  max_session_duration = "3600"
  name                 = "codebuild-sample-app2-build-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-sample-app2-eb-build-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-sample-app2-eb-build-ap-northeast-2", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"]
  max_session_duration = "3600"
  name                 = "codebuild-sample-app2-eb-build-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-sample-app2-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-sample-app2-ap-northeast-2"]
  max_session_duration = "3600"
  name                 = "codebuild-sample-app2-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--reader-role-uja574ke" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/AWSLambdaBasicExecutionRole-80c9f1c1-5966-4509-9da3-745840439e59"]
  max_session_duration = "3600"
  name                 = "reader-role-uja574ke"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--writer-role-m1x90cb0" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::761111057533:policy/service-role/AWSLambdaBasicExecutionRole-cb056cbd-e394-49e9-8a94-d9bb964b1b4b"]
  max_session_duration = "3600"
  name                 = "writer-role-m1x90cb0"
  path                 = "/service-role/"
}
