module "Network" {
  source                = "./Modules/Network"
  ENV                   = "${var.ENV}"
  PROJECT_NAME          = "${var.PROJECT_NAME}"
  VPC_CIDR              = "${var.VPC_CIDR}"
  PRIVATE_SUBNET_CID    = "${var.PRIVATE_SUBNET_CIDR}"
  PUBLIC_SUBNET_CIDR    = "${var.PUBLIC_SUBNET_CIDR}"
  MANAGEMENT_VPC        = "${var.MANAGEMENT_VPC}"
  MANAGEMENT_CIDR       = "${var.MANAGEMENT_CIDR}"
}

module "Network" {
  source                = "./Modules/Database"
  ENV                   = "${var.ENV}"
  PROJECT_NAME          = "${var.PROJECT_NAME}"
  VPC_ID                = "${module.Network.vpc_id}"
  PUBLIC_SUBNETS        = "${module.Network.public_subnets}"
  PRIVATE_SUBNETS       = "${module.Network.private_subnets}"
}
