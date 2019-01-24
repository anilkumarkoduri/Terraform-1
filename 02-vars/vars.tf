variable "vpc-cidr-block" {
  type = "string"
  default = "10.0.0.0/21"
}

variable "subnet-cidr-blocks" {
  type = "list"
  default = ["10.0.0.0/24","10.0.1.0/24","10.0.2.0/24"]
} 

variable "tags" {
  type = "map"

  default = {
    created_by = "Terraform"
    Project = "Test"
    Environment = "DEV"
  }
}