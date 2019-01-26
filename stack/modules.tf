module "Network" {
  source            = "./Modules/Network"
  ENV               = "${var.ENV}"
  PROJECT_NAME      = "${var.PROJECT_NAME}"
  VPC_CIDR          = "${var.VPC_CIDR}"
  PRIVATE_SUBNET_CIDR       = "${var.PRIVATE_SUBNET_CIDR}"
  PUBLIC
  SUBNET_COUNT      = "${var.SUBNET_COUNT}"
}