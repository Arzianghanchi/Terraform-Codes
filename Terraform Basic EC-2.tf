# Configure the AWS provider
provider "aws" {
  region = "us-east-2" # Replace with your desired region
}

# Create an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0deadbeef00000000" # Replace with the desired AMI ID
  instance_type = "t2.micro"

  # Optional arguments
  tags = {
    Name = "My EC2 Instance"
  }

  # Security group configuration (replace with your security group ID)
  vpc_security_group_ids = ["sg-12345678"]
}
