# IAM role
resource "aws_iam_role" "iam_role_dynamodb_purchase_table" {
  name               = "full_acess_dynamodb_purchase_table"
  description        = "allow purchase table of dynamodb full access"
  assume_role_policy = data.aws_iam_policy_document.iam_policy_dynamodb_purchase_table
  tags = {
    "Name" = "example"
  }
}

# IAM policy

data "aws_iam_policy_document" "iam_policy_dynamodb_purchase_table" {
  statement {
    effect    = "Allow"
    actions   = ["dynamodb:*"]
    resources = ["arn:aws:dynamodb:${var.region}:${var.account_id}:table/purchase_history"]
  }
  tags = {
    "Name" = "example"
  }
}

# IAM attachment

resource "aws_iam_role_policy_attachment" "iam_attachment_dynamodb_purchase_table" {
  role       = aws_iam_role.iam_role_dynamodb_purchase_table.name
  policy_arn = data.aws_iam_policy_document.iam_policy_dynamodb_purchase_table.arn
}