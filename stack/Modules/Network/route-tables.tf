resource "aws_route_table" "public-rt" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags = {
    Name            = "${var.PROJECT_NAME}-${var.ENV}-Public-RT"
    Project-ENV     = "${var.ENV}"
    Project-NAME    = "${var.PROJECT_NAME}"
    Created-By      = "Terraform"
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name            = "${var.PROJECT_NAME}-${var.ENV}-Private-RT"
    Project-ENV     = "${var.ENV}"
    Project-NAME    = "${var.PROJECT_NAME}"
    Created-By      = "Terraform"
  }
}

resource "aws_route_table_association" "public-rt-assoc" {
    count = "${length(var.PUBLIC_SUBNET_CIDR)}"
    subnet_id      = "${}"
    route_table_id = "${aws_route_table.public-rt.id}"
}