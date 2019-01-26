resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name            = "${var.PROJECT_NAME}-${var.ENV}-VPC"
    Project-ENV     = "${var.ENV}"
    Project-NAME    = "${var.PROJECT_NAME}"
    Created-By      = "Terraform"
  }
}