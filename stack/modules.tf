module "Network" {
  source            = "./Modules/Network"
  ENV               = "${var.ENV}"
  PROJECT_NAME      = "${var.PROJECT_NAME}"
}