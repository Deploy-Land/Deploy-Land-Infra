# --- ECR 모듈 호출 ---
module "ecr" {
  source    = "./modules/ecr"
  providers = { aws = aws.tokyo }
  app_name = "sample-app"
}
