provider "aws" {
  region                  = "us-west-2"
  shared_credentials_file = "/home/centos/.aws/credentails"
  profile                 = "default"
}

terraform {
  backend "s3" {
    bucket = "terra-citb34"
    key    = "sample/terraform.state"
    region = "us-west-2"
  }
}