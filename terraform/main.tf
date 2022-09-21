terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.3"
    }
  }
  # backend "s3" {
  #   bucket  = "terraform-state-bucket"
  #   region  = "ap-northeast-1"
  #   key     = "terraform.tfstate"
  #   encrypt = true
  # }
}
