

resource "aws_iam_role" "test_role" {
  name = "test_role"
  policy 
  tags = {
      tag-key = "tag-value"
  }
}