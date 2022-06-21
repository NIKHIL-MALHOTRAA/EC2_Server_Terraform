terraform {
  backend "s3" {
    bucket          = ""
    key             = ""
    region          = ""
 
  }
  required_providers {
    aws = "~> 2.4"
  }
}
provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = var.aws_role
  }
  profile = var.aws_environment
}


