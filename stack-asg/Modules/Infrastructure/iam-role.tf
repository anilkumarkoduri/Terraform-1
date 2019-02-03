resource "aws_iam_role" "ec2-role" {
  name = "EC2-Access-to-S3-Terraform-Bucket"
  policy 
  tags = {
      tag-key = "tag-value"
  }
}