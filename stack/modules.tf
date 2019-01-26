module "Network" {
  source            = "./Modules/Network"
  ENV               = "${var.ENV}"
  PROJECT_NAME      = "${var.PROJECT_NAME}"
  VPC_CIDR          = "${var.VPC_CIDR}"
  SUBNET_CIDR       = "${var.SUBNET_CIDR}"
  SUBNET_COUNT      = "${var.SUBNET_COUNT}"
}