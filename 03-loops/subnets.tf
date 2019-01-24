resource "aws_subnet" "subnets" {
  count=3
  vpc_id     = "${aws_vpc.main.id}"  
  cidr_block = "${var.subnet-cidr-blocks[count.index]}"  
  availability_zone = "${var.azs[count.index]}"  
}