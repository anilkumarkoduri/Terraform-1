# Create a new load balancer
resource "aws_elb" "studentapp-elb" {
  name               = "${var.PROJECT_NAME}-${var.ENV}-clb"
  subnets            = ["${var.PUBLIC_SUBNETS}"]


  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 1
    unhealthy_threshold = 1
    timeout             = 2
    target              = "TCP:80"
    interval            = 30
  }

  instances                   = ["${aws_instance.web.*.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "foobar-terraform-elb"
  }
}