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
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-2108-new"
  acl    = "private"

  tags = {
    Name        = "My bucket test"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Update      = "2021-12-18"
    UpdateBy    = "Glauco Todesco"
  }
}