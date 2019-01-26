variable "ENV" {}
variable "PROJECT_NAME" {}
variable "VPC_CIDR"   {}
variable "SUBNET_CIDR" {
    type = "list"
}  
variable "SUBNET_COUNT" {}