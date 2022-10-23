# Public
resource "aws_subnet" "subnet_public_example_1a" {
  vpc_id = aws_vpc.vpc_example.id

  availability_zone = var.availability_zone

  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "example"
  }
}

# Private
resource "aws_subnet" "subnet_private_example_1a" {
  vpc_id = aws_vpc.vpc_example.id

  availability_zone = var.availability_zone

  cidr_block = "10.0.10.0/24"

  tags = {
    Name = "example"
  }
}