resource "aws_internet_gateway" "bot" {
  vpc_id = aws_vpc.bot.id

  tags = {
    "Name" = var.name
  }
}
