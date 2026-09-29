provider "aws" {
  region = "ap-south-1"
}

module "ec2-b9" {
  source = "./modules/ec2"
  ami_value = var.ami_value
  instance_type_value = var.instance_type_value
}

module "ec2-1" {
  source = "./modules/ec2"
  ami_value = var.ami_value
  instance_type_value = var.instance_type_value
}

module "aws_vpc" {
  source = "./modules/vpc"
  vpc_value = var.vpc_value
}



