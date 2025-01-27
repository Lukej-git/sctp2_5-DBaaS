module "dynamodb-table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "4.2.0"

  name     = "luke-bookinventory"
  hash_key = "ISBN"
  range_key = "Genre"
  billing_mode = "PAY_PER_REQUEST"

  attributes = [
    {
    name = "ISBN"
    type = "S"
    },

    {
    name = "Genre"
    type = "S"
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}