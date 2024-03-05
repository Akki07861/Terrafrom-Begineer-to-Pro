provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "akki" {
  ami           = "ami-0440d3b780d96b29d"  # ami id will be taken from apropriate regoin and account . 
  instance_type = "t2.micro"  
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket = "bucket-123-demo" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}