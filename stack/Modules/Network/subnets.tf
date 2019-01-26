resource "aws_subnet" "public-subnets" {
    count           = "${length(var.PUBLIC_SUBNET_CIDR)}"
    vpc_id          = "${aws_vpc.main.id}"
    cidr_block      = "${element(var.PUBLIC_SUBNET_CIDR, count.index)}"

  tags = {
    Name            = "${var.PROJECT_NAME}-${var.ENV}-Public-Subnet-${count.index+1}"
    Project-ENV     = "${var.ENV}"
    Project-NAME    = "${var.PROJECT_NAME}"
    Created-By      = "Terraform"
  }
}

resource "aws_subnet" "private-subnets" {
    count           = "${length(var.PRIVATE_SUBNET_CIDR)}"
    vpc_id          = "${aws_vpc.main.id}"
    cidr_block      = "${element(var.PRIVATE_SUBNET_CIDR, count.index)}"

  tags = {
    Name            = "${var.PROJECT_NAME}-${var.ENV}-Private-Subnet-${count.index+1}"
    Project-ENV     = "${var.ENV}"
    Project-NAME    = "${var.PROJECT_NAME}"
    Created-By      = "Terraform"
  }
}
