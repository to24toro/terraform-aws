# Lambda関数（zipファイル)用バケット
resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "lambda-bucket-20221016"
  acl    = "private"
}