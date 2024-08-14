
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

provider "aws" {
  region  = "us-east-1"
}


resource "aws_instance" "example_server" {
  ami           = "ami-0c41531b8d18cc72b"
  instance_type = "t2.large"
  subnet_id     = "subnet-0846c66433e90beba"
  tags = {
    Name = "JacksBlogExample"
  }
}
