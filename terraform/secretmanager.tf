resource "aws_secretsmanager_secret" "secretsmanager_aws_info" {
  name                           = "secretsmanager_aws_info"
  recovery_window_in_days        = 30
  force_overwrite_replica_secret = false
  tags = {
    "Name" = "example"
  }
}
