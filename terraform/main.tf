terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.3"
    }
  }
  backend "s3" {
    bucket  = "terraform-state-bucket-bot-20220930"
    region  = "ap-northeast-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
}
