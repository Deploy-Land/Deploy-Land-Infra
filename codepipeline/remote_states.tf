data "terraform_remote_state" "ecr" {
  backend = "s3"
  config = {
    bucket = "deploy-land-tfstate"
    key    = "ecr/terraform.tfstate"
    region = "ap-northeast-2"
  }
}
