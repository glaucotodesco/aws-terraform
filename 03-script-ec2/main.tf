terraform {
  required_version = "1.1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.aws_region
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}