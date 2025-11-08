resource "aws_elastic_beanstalk_environment" "tfer--Deploy-Land-App-env" {
  application         = "Deploy-Land-App"
  name                = "Deploy-Land-App-env"
  platform_arn        = "arn:aws:elasticbeanstalk:ap-northeast-2::platform/Docker running on 64bit Amazon Linux 2/4.3.3"
  solution_stack_name = "64bit Amazon Linux 2 v4.3.3 running Docker"
  tier                = "WebServer"
  version_label       = "code-pipeline-1762580641564-BuildArtifact-df293e2d-a402-4982-8fe2-7e295376395e"
}
