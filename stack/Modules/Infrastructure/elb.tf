# Create a new load balancer
resource "aws_elb" "studentapp-elb" {
  name               = "${var.PROJECT_NAME}-${var.ENV}-clb"
  subnets            = ["${var.PUBLIC_SUBNETS}"]
  security_groups    = ["${aws_security_group.elb-sg}"]


  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 2
    target              = "TCP:80"
    interval            = 30
  }

  instances                   = ["${aws_instance.web.*.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 60
  connection_draining         = true
  connection_draining_timeout = 30

  tags                  = {
        Name            = "${var.PROJECT_NAME}-${var.ENV}-ELB"
        Project-ENV     = "${var.ENV}"
        Project-NAME    = "${var.PROJECT_NAME}"
        Created-By      = "Terraform"
  }
}