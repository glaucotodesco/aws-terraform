locals {

  sample_file_path = "test-file.txt"

  common_tags = {
    Service     = "Curso Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Cleber Gasparoto"
  }
}