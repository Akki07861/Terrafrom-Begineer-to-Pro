# Create an EC2 instance using the input variables
resource "aws_instance" "demo" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "ec2-demo"
    key = "terraform created this instance..."
  }
}

