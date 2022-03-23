terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
  backend "s3" {
    bucket = "rits-s3"
    region = "ap-south-1"
    key = "aws/terraform.tfstate"
  }
}


provider "aws" {
  # Configuration options
}