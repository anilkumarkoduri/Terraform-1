variable "ENV" {}
variable "PROJECT_NAME" {
    default = "STUDENT"
}

variable "SUBNET_COUNT" {}

variable "PUBLIC_SUBNET_CIDR" {
    type = "list"
}

variable "PRIVATE_SUBNET_CIDR" {
    type = "list"
}

variable "VPC_CIDR" {}
