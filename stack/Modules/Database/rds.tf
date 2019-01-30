resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mariadb"
  engine_version       = "10.3"
  instance_class       = "${var.DB_INSTANCE_TYPE}"
  username             = "${var.DBUSER}"
  password             = "${var.DBPASS}"
  parameter_group_name = "default.mysql5.7"
}