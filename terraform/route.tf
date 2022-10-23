# Route Table
resource "aws_route_table" "route_table_example" {
  vpc_id = aws_vpc.vpc_example.id
  route {
    cidr_block = "0.0.0.0/0"
    # private subnetと紐づける場合はNAT gatewayを選択する
    gateway_id = aws_internet_gateway.internet_gateway_example.id
  }
  tags = {
    Name = "example"
  }
}

resource "aws_route_table_association" "route_table_association_example" {
  route_table_id = aws_route_table.route_table_example.id
  subnet_id      = aws_subnet.subnet_public_example_1a.id

}