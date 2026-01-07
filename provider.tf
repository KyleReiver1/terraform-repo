
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  # terraform tfstate file remote backend section 
  backend "s3" {
    bucket = "kyle-jan26-terraform"
    key = "dev/kyle/terraform.tfstate"
    encrypt = true
    region = "us-east-1"
    dynamodb_table = "kyle-table"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1" # additional changes
}