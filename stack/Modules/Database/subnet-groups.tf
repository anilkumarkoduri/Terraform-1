resource "aws_db_subnet_group" "default" {
  name       = "studentapp"
  subnet_ids = ["${var.PRIVATE_SUBNETS}"]
}

resource "aws_db_parameter_group" "default" {
  name   = "rds-studentapp-pg"
  family = "mariadb10.3"
  parameter {
    name  = "lower_case_table_names"
    value = "1"
  }
}