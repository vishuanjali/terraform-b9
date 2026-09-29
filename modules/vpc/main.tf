provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "vpc-1" {
  cidr_block = var.vpc_value
}




