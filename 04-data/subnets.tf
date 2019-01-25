resource "aws_subnet" "subnets" {
  count=3
  vpc_id     = "${aws_vpc.main.id}"  
  cidr_block = "${var.subnet-cidr-blocks[count.index]}"  
  availability_zone = "${data.aws_availability_zones.azs.names[count.index]}"  
  tags = {
    Name = "${var.tags["Project"]}-Subnet-${count.index+1}" 
    Project-Name = "${var.tags["Project"]}"
    Project-ENV = "${var.tags["Environment"]}"
    Created-By = "${upper(var.tags["created-by"])}"
  }
}