resource "aws_subnet" "main" {
    
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = ""

  tags = {
   
  }
}