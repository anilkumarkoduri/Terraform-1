resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.main.id}"   ### THis is how we refer the created resource like variable in terraform. And the resource is single, Means it is creating a single vpc.
  cidr_block = "${var.subnet-cidr-blocks[0]}"  ## <-- This is how we access list variable
}
resource "aws_subnet" "subnet2" {
  vpc_id     = "${aws_vpc.main.id}"   ### THis is how we refer the created resource like variable in terraform. And the resource is single, Means it is creating a single vpc.
  cidr_block = "${var.subnet-cidr-blocks[1]}"  
}

resource "aws_subnet" "subnet3" {
  vpc_id     = "${aws_vpc.main.id}"   ### THis is how we refer the created resource like variable in terraform. And the resource is single, Means it is creating a single vpc.
  cidr_block = "${var.subnet-cidr-blocks[2]}"  
}