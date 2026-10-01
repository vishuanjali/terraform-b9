provider "aws" {
  region =   "ap-south-1"  
}

resource "aws_instance" "example" {
  ami =  "ami-0351a972f17e4d123" 
  instance_type =  "t2.small" 
  tags = {
    Name =  "terra-server-${terraform.workspace}" 
  }
}