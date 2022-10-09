locals {
  AWS_INFO = jsondecode(
    data.aws_secretsmanager_secret_version.AWS_USERINFO.secret_string
  )
}