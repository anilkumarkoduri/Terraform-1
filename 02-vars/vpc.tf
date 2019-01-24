resource "aws_vpc" "main" {
  cidr_block = "${var.vpc-cidr-block}"

  tags = {
    Name = "${var.tags["Project"]}-VPC"  ## <<- We are referring maps 
    Project-Name = "${var.tags["Project"]}"
    Project-ENV = "${var.tags["Environment"]}"
    Created-By = "${upper(var.tags["created-by"])}"
  }
}
