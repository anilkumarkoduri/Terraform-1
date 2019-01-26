resource "aws_vpc" "main" {
  cidr_block = "${var.vpc-cidr-block}"

  tags = {
    Project-ENV = "${var.ENV}"
  }
}

