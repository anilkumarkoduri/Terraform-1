##
resource "aws_launch_configuration" "launch-config" {
  name                  = "student-config"
  image_id              = "${var.AMI_ID}"
  instance_type         = "${var.INSTANCE_TYPE}"
  iam_instance_profile  = "${aws_iam_instance_profile.ec2-profile.name}"
  key_name              = "devops"
  user_data = <<-EOF
              #!/bin/bash
              sudo yum install ansible git python2-pip -y
              sudo pip install awscli
              aws s3 cp s3://terra-citb34/DB-Details/dev-db-details /tmp/dev-db-details
              ansible-pull -U https://github.com/citb34/ansible-pull.git setup-stack.yml -e @/tmp/dev-db-details
              EOF
  security_groups       = ["${aws_security_group.ec2-sg.id}"]
}

resource "aws_autoscaling_group" "asg" {
  name                      = "studentapp-dev-asg"
  max_size                  = 1
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 1
  force_delete              = true
  load_balancers            = ["${aws_elb.studentapp-elb}"]
  launch_configuration      = "${aws_launch_configuration.launch-config.name}"
  vpc_zone_identifier       = ["${var.PUBLIC_SUBNETS}"]

}
