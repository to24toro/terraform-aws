terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.3"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-northeast-1"

  default_tags {
    tags = {
      env = "terraform"
    }
  }
}