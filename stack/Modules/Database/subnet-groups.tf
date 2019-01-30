resource "aws_db_subnet_group" "default" {
  name       = "studentapp"
  subnet_ids = ["${var.PRIVATE_SUBNETS}"]
}
