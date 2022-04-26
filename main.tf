resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "GameScores"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "CommentId"
  range_key      = "PostId"

  attribute {
    name = "PostId"
    type = "N"
  }

  attribute {
    name = "CommentId"
    type = "N"
  }

  attribute {
    name = "CommentString"
    type = "s"
  }

  attribute {
    name = "CommentMedia"
    type = "s"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  tags = {
    Name        = "dynamodb-table-1"
    Environment = "production"
  }
}

