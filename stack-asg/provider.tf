provider "aws" {
  region                  = "us-west-2"
  shared_credentials_file = "/home/centos/.aws/credentails"
  profile                 = "default"
}

provider "aws" {
  alias  = "peer"
  region = "us-west-2"

  # Accepter's credentials.
}

terraform {
  backend "s3" {
    bucket = "terra-citb34"
    key    = "stack/terraform.state"
    region = "us-west-2"
  }
}
