resource "aws_instance" "web" {
  ami           = "${var.AMI_ID}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}