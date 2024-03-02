provider "aws" {
  region = "us-east-1" #give the region you want.
  # secret_key = "xxxxxxxxxxxxx"
  # access_key = "xxxxxxxxxxxxx"
}

resource "aws_instance" "demo" {
  ami           = "ami-0440d3b780d96b29d"  # ami id will be taken from apropriate regoin and account . 
  instance_type = "t2.micro"               # as of requirment change the instance type

  tags = {
    Name = "demo-ec2"
    work = "Terraform demo for day 1" #you can also write as work/ description anything you want .
    #here we can add any discription which is helpfull to you recorgnise the purpose of instance .....
  }
}

