# NAT Gatewayに紐付けるIP address
resource "aws_eip" "eip_example" {
  vpc = true
  tags = {
    Name = "example"
  }
}