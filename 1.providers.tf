# Terraform Block
 terraform {
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5"
         }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "us-west-s3-tf-stfile"
    key    = "terraform.tfstate"
    region = "eu-west-2"     
    # For State Locking
    dynamodb_table = "uswest-tf-lock"    
  }    
}

# Provider Block
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
  access_key = "AKIAU5FBEXPZQQGMRIJW"
  secret_key = "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"
}

/*
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAU5FBEXPZQQGMRIJW"
  secret_key = "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"
  alias = "india-region"
}*/

# Provider "aws" {}   #pass variables using set command
