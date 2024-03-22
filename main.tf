terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}
provider "aws" {
  region  = "eu-north-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-079ae45378903f993"
  instance_type = "t3.micro"

  tags = {
    Name = "website"
  }
}