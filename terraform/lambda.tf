resource "aws_lambda_function" "lambda_example" {
  function_name = "lambda_example"

  s3_bucket = aws_s3_bucket.lambda_bucket.bucket
  s3_key    = "lambda_example_python.zip"
  handler   = "handler"
  runtime   = "python3.9"
  timeout   = 150
  role      = aws_iam_role.iam_role_lambda_example.arn
  #   publish = false lambdaのバージョン管理
}