resource "aws_security_group" "bot" {
  vpc_id = aws_vpc.bot.id
  name   = var.name

  tags = {
    "Name" = var.name
  }
}

resource "aws_security_group_rule" "bot_ingress" {
  security_group_id = aws_security_group.bot.id
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
}

resource "aws_security_group_rule" "bot_egress" {
  security_group_id = aws_security_group.bot.id
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
}