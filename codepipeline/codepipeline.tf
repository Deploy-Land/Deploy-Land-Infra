resource "aws_codepipeline" "tfer--app2-eb-pipeline" {
  artifact_store {
    location = "codepipeline-ap-northeast-2-00c4b2fd61e9-4566-864f-fad2326f7c47"
    type     = "S3"
  }

  execution_mode = "QUEUED"
  name           = "app2-eb-pipeline"
  pipeline_type  = "V2"
  role_arn       = "arn:aws:iam::761111057533:role/service-role/app2-eb-role"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "sample-app2-eb-build"
      }

      input_artifacts    = ["SourceArtifact"]
      name               = "Build"
      namespace          = "BuildVariables"
      output_artifacts   = ["BuildArtifact"]
      owner              = "AWS"
      provider           = "CodeBuild"
      region             = "ap-northeast-2"
      run_order          = "1"
      timeout_in_minutes = "0"
      version            = "1"
    }

    name = "Build"

    on_failure {
      result = "RETRY"

      retry_configuration {
        retry_mode = "ALL_ACTIONS"
      }
    }
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ApplicationName = "Deploy-Land-App"
        EnvironmentName = "Deploy-Land-App-env"
      }

      input_artifacts    = ["BuildArtifact"]
      name               = "Deploy"
      namespace          = "DeployVariables"
      owner              = "AWS"
      provider           = "ElasticBeanstalk"
      region             = "ap-northeast-2"
      run_order          = "1"
      timeout_in_minutes = "0"
      version            = "1"
    }

    name = "Deploy"

    on_failure {
      result = "ROLLBACK"
    }
  }

  stage {
    action {
      category = "Source"

      configuration = {
        BranchName           = "main"
        ConnectionArn        = "arn:aws:codeconnections:ap-northeast-2:761111057533:connection/799db1e7-a9a8-4f5a-968d-ded7bdf95918"
        DetectChanges        = "true"
        FullRepositoryId     = "Deploy-Land/sample-app2"
        OutputArtifactFormat = "CODE_ZIP"
      }

      name               = "Source"
      namespace          = "SourceVariables"
      output_artifacts   = ["SourceArtifact"]
      owner              = "AWS"
      provider           = "CodeStarSourceConnection"
      region             = "ap-northeast-2"
      run_order          = "1"
      timeout_in_minutes = "0"
      version            = "1"
    }

    name = "Source"

    on_failure {
      result = "RETRY"

      retry_configuration {
        retry_mode = "ALL_ACTIONS"
      }
    }
  }
}