# Internet Gateway
resource "aws_internet_gateway" "internet_gateway_example" {
  vpc_id = aws_vpc.vpc_example.id
  tags = {
    Name = "example"
  }
}

# #NAT Gateway
# resource "aws_nat_gateway" "nat_example" {
#   subnet_id     = aws_subnet.subnet_public_example_1a
#   allocation_id = aws_eip.eip_example.id
# }