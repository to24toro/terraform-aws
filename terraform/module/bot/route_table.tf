resource "aws_route_table" "bot" {
  vpc_id = aws_vpc.bot.id

  tags = {
    "Name" = var.name
  }
}

resource "aws_route" "bot" {
  gateway_id             = aws_internet_gateway.bot.id
  route_table_id         = aws_route_table.bot.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "bot" {
  subnet_id      = aws_subnet.bot.id
  route_table_id = aws_route_table.bot.id
}