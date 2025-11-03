terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# 기본 공급자 (서울)
provider "aws" {
  region = "ap-northeast-2"
}

# 도쿄 공급자
provider "aws" {
  alias  = "tokyo"
  region = "ap-northeast-1"
}

