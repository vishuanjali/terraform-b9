terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-01a00762f46d584a1" # Ubuntu 22.04 LTS AMI ID for us-east-1 (Change if using a different region)
  instance_type = "t2.micro"
  tags = {
    Name        = "server1"
  }
}