module "Network" {
  source  = "./Modules/Network"
  ENV     = "${var.ENV}"
  PROJECT = "${var.PROJECT_NAME}"
}