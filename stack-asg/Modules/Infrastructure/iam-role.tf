resource "aws_iam_role" ""role" {
  name = "test_role"
  policy 
  tags = {
      tag-key = "tag-value"
  }
}