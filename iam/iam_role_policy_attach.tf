resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-app2_AWSCodePipelineServiceRole-ap-northeast-2-app2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/AWSCodePipelineServiceRole-ap-northeast-2-app2"
  role       = "AWSCodePipelineServiceRole-ap-northeast-2-app2"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-app2_CodePipeline-CodeBuild-ap-northeast-2-app2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeBuild-ap-northeast-2-app2"
  role       = "AWSCodePipelineServiceRole-ap-northeast-2-app2"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-app2_CodePipeline-CodeConnections-ap-northeast-2-app2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeConnections-ap-northeast-2-app2"
  role       = "AWSCodePipelineServiceRole-ap-northeast-2-app2"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAPIGateway_APIGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = "AWSServiceRoleForAPIGateway"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSSO_AWSSSOServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
  role       = "AWSServiceRoleForSSO"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--Amazon_EventBridge_Invoke_Lambda_2059101862_Amazon_EventBridge_Invoke_Lambda_2059101862" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/Amazon_EventBridge_Invoke_Lambda_2059101862"
  role       = "Amazon_EventBridge_Invoke_Lambda_2059101862"
}

resource "aws_iam_role_policy_attachment" "tfer--Amazon_EventBridge_Invoke_Lambda_App_Healthcheck_Amazon_EventBridge_Invoke_Lambda_App_Healthcheck" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/Amazon_EventBridge_Invoke_Lambda_App_Healthcheck"
  role       = "Amazon_EventBridge_Invoke_Lambda_App_Healthcheck"
}

resource "aws_iam_role_policy_attachment" "tfer--App-HealthCheck-role-nls58mbo_AWSLambdaBasicExecutionRole-1eb4c717-94c4-4b59-bc8a-a2359e67b2a9" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/AWSLambdaBasicExecutionRole-1eb4c717-94c4-4b59-bc8a-a2359e67b2a9"
  role       = "App-HealthCheck-role-nls58mbo"
}

resource "aws_iam_role_policy_attachment" "tfer--AppRunnerECRAccessRole_AWSAppRunnerServicePolicyForECRAccess" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSAppRunnerServicePolicyForECRAccess"
  role       = "AppRunnerECRAccessRole"
}

resource "aws_iam_role_policy_attachment" "tfer--DynamoDB-reader_AmazonDynamoDBReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBReadOnlyAccess"
  role       = "DynamoDB-reader"
}

resource "aws_iam_role_policy_attachment" "tfer--DynamoDB-writer_AWSCodePipeline_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCodePipeline_ReadOnlyAccess"
  role       = "DynamoDB-writer"
}

resource "aws_iam_role_policy_attachment" "tfer--DynamoDB-writer_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "DynamoDB-writer"
}

resource "aws_iam_role_policy_attachment" "tfer--DynamoDB-writer_AWSMarketplaceFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSMarketplaceFullAccess"
  role       = "DynamoDB-writer"
}

resource "aws_iam_role_policy_attachment" "tfer--DynamoDB-writer_AmazonBedrockFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonBedrockFullAccess"
  role       = "DynamoDB-writer"
}

resource "aws_iam_role_policy_attachment" "tfer--DynamoDB-writer_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "DynamoDB-writer"
}

resource "aws_iam_role_policy_attachment" "tfer--Github-OIDC-Deploy-Land_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "Github-OIDC-Deploy-Land"
}

resource "aws_iam_role_policy_attachment" "tfer--app2-eb-role_AWSCodePipelineServiceRole-ap-northeast-2-app2-eb-pipeline" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/AWSCodePipelineServiceRole-ap-northeast-2-app2-eb-pipeline"
  role       = "app2-eb-role"
}

resource "aws_iam_role_policy_attachment" "tfer--app2-eb-role_AdministratorAccess-AWSElasticBeanstalk" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk"
  role       = "app2-eb-role"
}

resource "aws_iam_role_policy_attachment" "tfer--app2-eb-role_CodePipeline-CodeBuild-ap-northeast-2-app2-eb-pipeline" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeBuild-ap-northeast-2-app2-eb-pipeline"
  role       = "app2-eb-role"
}

resource "aws_iam_role_policy_attachment" "tfer--app2-eb-role_CodePipeline-CodeConnections-ap-northeast-2-app2-eb-pipeline" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodePipeline-CodeConnections-ap-northeast-2-app2-eb-pipeline"
  role       = "app2-eb-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkMulticontainerDocker" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkWebTier" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-ec2-role_AWSElasticBeanstalkWorkerTier" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-ec2-role_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "aws-elasticbeanstalk-ec2-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-service-role_AWSElasticBeanstalkEnhancedHealth" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"
  role       = "aws-elasticbeanstalk-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-elasticbeanstalk-service-role_AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy"
  role       = "aws-elasticbeanstalk-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-build-project-2-service-role_CodeBuildBasePolicy-build-project-2-ap-northeast-2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-build-project-2-ap-northeast-2"
  role       = "codebuild-build-project-2-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-bulid-project-2-service-role_CodeBuildBasePolicy-bulid-project-2-ap-northeast-2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-bulid-project-2-ap-northeast-2"
  role       = "codebuild-bulid-project-2-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-app2-build-service-role_AWSAppRunnerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSAppRunnerFullAccess"
  role       = "codebuild-sample-app2-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-app2-build-service-role_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  role       = "codebuild-sample-app2-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-app2-build-service-role_CloudWatchLogsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
  role       = "codebuild-sample-app2-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-app2-build-service-role_CodeBuildBasePolicy-sample-app2-build-ap-northeast-2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-sample-app2-build-ap-northeast-2"
  role       = "codebuild-sample-app2-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-app2-build-service-role_CodeBuildCachePolicy-sample-app2-build-ap-northeast-2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodeBuildCachePolicy-sample-app2-build-ap-northeast-2"
  role       = "codebuild-sample-app2-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-app2-eb-build-service-role_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  role       = "codebuild-sample-app2-eb-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-app2-eb-build-service-role_CodeBuildBasePolicy-sample-app2-eb-build-ap-northeast-2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-sample-app2-eb-build-ap-northeast-2"
  role       = "codebuild-sample-app2-eb-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-app2-service-role_CodeBuildBasePolicy-sample-app2-ap-northeast-2" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-sample-app2-ap-northeast-2"
  role       = "codebuild-sample-app2-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-sample-build-service-role_CodeBuildBasePolicy-sample-build-ap-northeast-1" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/CodeBuildBasePolicy-sample-build-ap-northeast-1"
  role       = "codebuild-sample-build-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--ecsTaskExecutionRole_AmazonECSTaskExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
  role       = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--reader-role-uja574ke_AWSLambdaBasicExecutionRole-80c9f1c1-5966-4509-9da3-745840439e59" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/AWSLambdaBasicExecutionRole-80c9f1c1-5966-4509-9da3-745840439e59"
  role       = "reader-role-uja574ke"
}

resource "aws_iam_role_policy_attachment" "tfer--writer-role-m1x90cb0_AWSLambdaBasicExecutionRole-cb056cbd-e394-49e9-8a94-d9bb964b1b4b" {
  policy_arn = "arn:aws:iam::761111057533:policy/service-role/AWSLambdaBasicExecutionRole-cb056cbd-e394-49e9-8a94-d9bb964b1b4b"
  role       = "writer-role-m1x90cb0"
}
