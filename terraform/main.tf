terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.3"
    }
  }
  backend "s3" {
    bucket  = "terraform_state_bucket"
    region  = "ap-northeast-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
}
