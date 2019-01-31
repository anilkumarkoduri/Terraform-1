resource "aws_instance" "web" {
    count           = 2
    ami             = "${var.AMI_ID}"
    instance_type   = "${var.INSTANCE_TYPE}"
    key_name        = "devops"
    subnet_id       = "${element(var.PUBLIC_SUBNETS, count.index)}"
    
    tags = {

  }
}