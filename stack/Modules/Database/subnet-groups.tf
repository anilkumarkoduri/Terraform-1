resource "aws_db_subnet_group" "default" {
  name       = "student"
  subnet_ids = ["${var.PRIVATE_SUBNETS}"]

}
