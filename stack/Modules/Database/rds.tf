resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mariadb"
  engine_version       = "10.3"
  instance_class       = "${var.DB_INSTANCE_TYPE}"
  username             = "${var.DBUSER}"
  password             = "${var.DBPASS}"
  parameter_group_name = "${aws_db_parameter_group.default.id}"
  db_subnet_group_name = "${aws_db_subnet_group.default.id}"
  deletion_protection  = false
  identifier           = "studentapp-dev-rds"
  tags = {
    Name            = "${var.PROJECT_NAME}-${var.ENV}-RDS"
    Project-ENV     = "${var.ENV}"
    Project-NAME    = "${var.PROJECT_NAME}"
    Created-By      = "Terraform"
  }
}

resource "null_resource" "schema-setup" {

  provisioner "local-exec" {
    command = <<EOF
    mysql 
    EOF
  }
}