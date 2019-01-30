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

variable "MANAGEMENT_VPC" {
    default = "vpc-948554ed"
}

variable "MANAGEMENT_CIDR" {
    default = "172.31.0.0/16"
} 

variable "DB_INSTANCE_TYPE" {}
variable "DBUSER" {}