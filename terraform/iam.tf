# IAM role
resource "aws_iam_role" "iam_role_dynamodb_purchase_table" {
  name               = "full_access_dynamodb_purchase_table"
  description        = "allow purchase table of dynamodb full access"
  assume_role_policy = data.aws_iam_policy_document.assume_policy.json
  tags = {
    "Name" = "example"
  }
}

resource "aws_iam_role" "iam_role_lambda_example" {
  name               = "full_access_lambda"
  description        = "allow lambda example full access"
  assume_role_policy = data.aws_iam_policy_document.assume_policy.json
  tags = {
    "Name" = "example"
  }
}

# IAM policy

resource "aws_iam_policy" "iam_policy_dynamodb_purchase_table" {
  name = "dynamodb_purchase_table"

  policy = data.aws_iam_policy_document.iam_policy_dynamodb_purchase_table.json
}

resource "aws_iam_policy" "iam_policy_lambda_example" {
  name = "lambda_example"

  policy = data.aws_iam_policy_document.iam_policy_lambda_example.json
}

# IAM policy document

data "aws_iam_policy_document" "assume_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${local.AWS_USERINFO.AWS_ACCOUNT_ID}:root"]
    }
  }
}

data "aws_iam_policy_document" "iam_policy_dynamodb_purchase_table" {
  statement {
    effect    = "Allow"
    actions   = ["dynamodb:*"]
    resources = ["arn:aws:dynamodb:${var.region}:${local.AWS_USERINFO.AWS_ACCOUNT_ID}:table/purchase_history"]
  }
}


data "aws_iam_policy_document" "iam_policy_lambda_example" {
  statement {
    effect    = "Allow"
    actions   = ["lambda:*"]
    resources = ["arn:aws:dynamodb:${var.region}:${local.AWS_USERINFO.AWS_ACCOUNT_ID}:function/lambda_example"]
  }
}
# IAM attachment

resource "aws_iam_role_policy_attachment" "iam_attachment_dynamodb_purchase_table" {
  role       = aws_iam_role.iam_role_dynamodb_purchase_table.name
  policy_arn = aws_iam_policy.iam_policy_dynamodb_purchase_table.arn
}

resource "aws_iam_role_policy_attachment" "iam_attachment_lambda_example" {
  role       = aws_iam_role.iam_role_lambda_example.name
  policy_arn = aws_iam_policy.iam_policy_lambda_example.arn
}