# Internet Gateway
resource "aws_internet_gateway" "internet_gateway_example" {
  vpc_id = aws_vpc.vpc_example.id
  tags = {
    Name = "example"
  }
}