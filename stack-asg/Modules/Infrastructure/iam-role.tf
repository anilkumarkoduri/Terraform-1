resource "aws_iam_role" "ec2-role" {
  name = "test_role"
  policy 
  tags = {
      tag-key = "tag-value"
  }
}