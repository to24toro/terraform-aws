module "swing_bot_15" {
  source                           = "./module/bot"
  architecture                     = "x86_64"
  availability_zone                = var.availability_zone
  aws_ami_name                     = "amzn2-ami-hvm-*"
  block_device_mapping_volume_type = "gp2"
  name                             = "swing_bot_15"
  instance_type                    = "t2.small"
  root_device_type                 = "ebs"
  subnet_cidr_block                = "10.0.1.0/24"
  virtualization_type              = "hvm"
  volume_size_of_block_deivce      = 8
  volume_type_of_block_device      = "gp3"
  vpc_cidr_block                   = "10.0.0.0/16"
}