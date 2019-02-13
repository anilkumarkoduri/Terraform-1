output "elb" {
  value = "${aws_elb.studentapp-elb.dns_name}"
}