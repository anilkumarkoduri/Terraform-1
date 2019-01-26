resource "aws_vpc" "main" {
  cidr_block = "${var.VPC_CIDR}"

  tags = {
    Name        = "${var.PROJECT_NAME}-${var.ENV}-VPC"
    Project-ENV = "${var.ENV}"
    Project-NAME = "${var.PROJECT_NAME}"
    Created-By    
  }
}

