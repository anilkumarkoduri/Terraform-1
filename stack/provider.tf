provider "aws" {
  region                  = "us-west-2"
  shared_credentials_file = "/home/centos/.aws/credentails"
  profile                 = "default"
  #alias                   = "peer"
}

terraform {
  backend "s3" {
    bucket = "terra-citb34"
    key    = "stack/terraform.state"
    region = "us-west-2"
  }
}
