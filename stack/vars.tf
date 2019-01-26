variable "ENV" {}
variable "PROJECT_NAME" {
    default = "STUDENT"
}

variable "SUBNET_COUNT" {}

variable "SUBNET_CIDR" {
    type = "list"
}

variable "VPC_CIDR" {}
