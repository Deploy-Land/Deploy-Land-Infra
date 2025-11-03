terraform {
      backend "s3" {
        bucket         = "deploy-land-tfstate" 
        key            = "ECR/terraform.tfstate"
        region         = "ap-northeast-2" 
        dynamodb_table = "deploy-land-tflock"       
        encrypt        = true
      }
    }