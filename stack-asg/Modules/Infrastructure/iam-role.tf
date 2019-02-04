
resource "aws_iam_role" "iam_role-for-ec2" {	    
    name = "iam-role-for-ec2"
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
}	

resource "aws_iam_instance_profile" "ec2-profile" {
  name = "iam-role-for-ec2"
  role = "${aws_iam_role.iam_role-for-ec2.name}"
}

resource "aws_iam_role_policy" "ec2-role-policy" {
  name = "EC2-Access-to-S3-Terraform-Bucket"
  role = "${aws_iam_role.iam_role-for-ec2.id}"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket"
      ],
     "Resource": [
        "arn:aws:s3:::terra-citb34"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:DeleteObject",
        "s3:PutObjectAcl"
      ],
      "Resource": [
         "arn:aws:s3:::terra-citb34/*"
      ]
    }
  ]
}
EOF

}

