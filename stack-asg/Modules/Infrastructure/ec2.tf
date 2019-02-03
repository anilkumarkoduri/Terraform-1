resource "aws_launch_configuration" "launch-config" {
  name                  = "student-config"
  image_id              = "${var.AMI_ID}"
  instance_type         = "${var.INSTANCE_TYPE}"
  iam_instance_profile  = "${aws}"

}




