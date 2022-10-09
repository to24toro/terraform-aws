locals {
  AWS_USERINFO = jsondecode(
    data.aws_secretsmanager_secret_version.secret_version_aws_userinfo.secret_string
  )
}