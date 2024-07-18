# Create an EC2 Instance
resource "aws_instance" "terraformins" {
  ami           = "ami-04a81a99f5ec58529"   # change the ami id 
  instance_type = "t2.micro"   # change the instance_type as per requirement            

  tags = {
    Name = "server1"
  }
}
