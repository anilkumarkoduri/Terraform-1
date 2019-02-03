resource "aws_iam_role" "ec2-role" {
  name = "EC2-Access-to-S3-Terraform-Bucket"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF 
  tags = {
      tag-key = "tag-value"
  }
}