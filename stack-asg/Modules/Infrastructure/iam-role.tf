resource "aws_iam_role" "ec2-role" {
  name = "EC2-Access-to-S3-Terraform-Bucket"
  path = "/"
  assume_role_policy = <<EOF
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

  tags = {
      Name = "EC2-Access-to-S3-Terraform-Bucket"
  }
}

resource "aws_iam_instance_profile" "ec2-profile" {
  name = "ec2-instance-profile-studentapp-dev"
  role = "${aws_iam_role.ec2-role.name}"
}