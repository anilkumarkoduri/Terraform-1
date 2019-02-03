resource "aws_iam_policy" "s3-access-policy" {
  name        = "EC2-Accessing-S3-Terraform"
  path        = "/"
  description = "EC2-Accessing-S3-Terraform"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "s3:ListBucket",
            "Resource": "arn:aws:s3:::terra-citb34"
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObjectAcl"
            ],
            "Resource": "arn:aws:s3:::terra-citb34/*"
        }
    ]
}
EOF
}

resource "aws_iam_role" "test_role" {
  name = "test_role"
  policy 
  tags = {
      tag-key = "tag-value"
  }
}