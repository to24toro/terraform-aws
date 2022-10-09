resource "aws_dynamodb_table" "purchase_history" {
  name           = "purchase_history"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "Date"
  range_key      = "Item"

  attribute {
    name = "Date"
    type = "N"
  }
  attribute {
    name = "Item"
    type = "N"
  }
  tags = {
    Name = "example"
  }
}