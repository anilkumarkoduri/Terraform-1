resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/21"

  tags = {
    Project-ENV = "${var.ENV}"
  }
}

