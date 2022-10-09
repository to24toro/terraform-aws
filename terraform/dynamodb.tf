resource "aws_dynamodb_table" "purchase_history" {
    name = "purchase_history"
    billing_mode = "PROVISIONED"
    read_capacity = 20
    write_capacity = 20
    hash_key = "Day"
    range_key = "Price"
    attribute {
        name = "Item"
        type = "S"
    }
    attribute {
        name = "Day"
        type = "N"
    }
    attribute {
        name = "Price"
        type = "N"
    }
    tags = {
        Name = "example"
    }
}