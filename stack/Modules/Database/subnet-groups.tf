resource "aws_db_subnet_group" "default" {
  name       = "${var.PR}"
  subnet_ids = ["${var.PRIVATE_SUBNETS}"]

}
