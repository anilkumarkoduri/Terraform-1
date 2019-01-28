variable "ENV" {}
variable "PROJECT_NAME" {
    default = "STUDENT"
}


variable "PUBLIC_SUBNET_CIDR" {
    type = "list"
}

variable "PRIVATE_SUBNET_CIDR" {
    type = "list"
}

variable "VPC_CIDR" {}

MANAGEMENT_VPC = "vpc-948554ed"
MANAGEMENT_CIDR = "172.31.0.0/16"