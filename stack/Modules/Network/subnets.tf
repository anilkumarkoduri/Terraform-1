resource "aws_subnet" "main" {
    count           = "${length(var.PUBLIC_SUBNET_CIDR)}"
    vpc_id          = "${aws_vpc.main.id}"
    cidr_block      = ""

  tags = {
   
  }
}