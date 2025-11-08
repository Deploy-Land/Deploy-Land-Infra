resource "aws_codebuild_project" "tfer--sample-app2-eb-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "sample-app2-eb-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  encryption_key = "arn:aws:kms:ap-northeast-2:761111057533:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_MEDIUM"
    image                       = "aws/codebuild/amazonlinux-x86_64-standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      status = "ENABLED"
    }

    s3_logs {
      encryption_disabled = "false"
      status              = "DISABLED"
    }
  }

  name               = "sample-app2-eb-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::761111057533:role/service-role/codebuild-sample-app2-eb-build-service-role"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}