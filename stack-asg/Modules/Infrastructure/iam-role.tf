resource "aws_iam_policy" "s3-access-policy" {
  name        = "EC2-Accessing-S3-Terraform"
  path        = "/"
  description = "EC2-Accessing-S3-Terraform"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}