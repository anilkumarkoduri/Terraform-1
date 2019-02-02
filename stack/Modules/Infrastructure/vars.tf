variable "ENV" {}
variable "PROJECT_NAME" {}

variable "VPC_ID" {}
variable "VPC_CIDR" {}
variable "PUBLIC_SUBNETS"  {
    type    = "list"
}
variable "PRIVATE_SUBNETS" {
    type    = "list"
}
variable "AMI_ID" {}
variable "INSTANCE_TYPE" {}
data "aws_availability_zones" "azs" {}

variable "RDS_ENDPOINT" {}
variable "RDS_USERNAME" {}
variable "RDS_PASSWORD" {}
variable "RDS_DBNAME"