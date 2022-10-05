terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" # define region as per your account
}
resource "aws_instance" "sunch" {
  ami           = "ami-0ee23bfc74a881de5"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_s3_bucket" "goldd" {
  bucket = "demo-action-tf-medium"

  object_lock_enabled = false

  tags = {
    Environment = "Prod"
  }
}
