provider "aws" {
  region = "ap-northeast-1"


  default_tags {
    tags = {
      env = "terraform"
    }
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-bucket"
  versioning {
    enabled = true
  }
}