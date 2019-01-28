resource "aws_db_subnet_group" "default" {
  name       = "${var.PROJECT_NAME}-Subnet-Group"
  subnet_ids = ["${var.PRIVATE_SUBNETS}"]

}
