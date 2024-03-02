terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0.0"
    }
  }
}

# Configure the AWS provider using the input variables
provider "aws" {
  region = "us-east-1"
}
