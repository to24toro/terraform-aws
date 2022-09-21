resource "aws_vpc" "bot" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "bot" {
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
  vpc_id            = aws_vpc.bot.id

  map_public_ip_on_launch = true

  tags = {
    Name = var.name
  }
}