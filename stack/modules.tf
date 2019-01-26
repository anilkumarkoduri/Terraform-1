module "Network" {
  source            = "./Modules/Network"
  ENV               = "${var.ENV}"
  PROJECT_NAME      = "${var.PROJECT_NAME}"
  VPC_CIDR          = "${var.VPC_CIDR}"
  PRIVATE_SUBNET_CIDR       = "${var.PRIVATE_SUBNET_CIDR}"
  PUBLIC_SUBNET_CIDR    = "${var.PUBLIC_SUBNET_CIDR}"
}