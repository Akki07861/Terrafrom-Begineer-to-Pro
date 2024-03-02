# Configure the all provider using the input variables
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

# Create an EC2 instance using the input variables
resource "aws_instance" "demo" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "ec2-demo"
    key = "terraform created this instance..."
    
      }
}


# Define an input variable for the EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Define an input variable for the EC2 instance AMI ID
variable "ami_id" {
  description = "EC2 instance AMI ID"
  default     = "ami-0440d3b780d96b29d"
  type        = string
}


# Define an output variable to expose the public IP address of the EC2 instance
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.demo.public_ip
}