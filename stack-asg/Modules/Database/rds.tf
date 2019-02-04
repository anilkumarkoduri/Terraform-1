resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mariadb"
  engine_version       = "10.3"
  instance_class       = "${var.DB_INSTANCE_TYPE}"
  username             = "${var.DBUSER}"
  password             = "${var.DBPASS}"
  parameter_group_name = "${aws_db_parameter_group.default.id}"
  db_subnet_group_name = "${aws_db_subnet_group.default.name}"
  deletion_protection  = false
  skip_final_snapshot  = true
  identifier           = "studentapp-dev-rds"
  vpc_security_group_ids    = ["${aws_security_group.rds.id}"]
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
    curl https://raw.githubusercontent.com/citb34/project-1-documentation/master/studentapp-rds.sql >/tmp/studentapp.sql
    mysql -h ${aws_db_instance.default.address} -u ${var.DBUSER} -p${var.DBPASS} </tmp/studentapp.sql
    EOF
  }
}

resource "null_resource" "db-values-export" {

  provisioner "local-exec" {
    command = <<EOF
    echo -e "RDS_ENDPOINT:${aws_db_instance.default.address}\nRDS_USERNAME=\n RDS_PASSWORD= \nRDS_DBNAME="
    EOF
  }
}