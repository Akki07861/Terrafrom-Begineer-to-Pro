terraform {
  backend "s3" {
    bucket         = "bucket-123-demo" # change this
    key            = "akki/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}