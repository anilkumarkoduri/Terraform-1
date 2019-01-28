resource "aws_db_subnet_group" "default" {
  name       = "${var.PROJECT_NAME}SubnetGroup"
  subnet_ids = ["${var.PRIVATE_SUBNETS}"]
}
