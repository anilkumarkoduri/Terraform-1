resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = ["${var.PRIVATE_SUBNETS}"]
}
