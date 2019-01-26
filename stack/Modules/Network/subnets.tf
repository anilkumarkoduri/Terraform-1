resource "aws_subnet" "main" {
    count = "${length()}"
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = ""

  tags = {
   
  }
}