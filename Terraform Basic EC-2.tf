terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}
#
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



/* 
AMI Name	                  Region	      AMI ID
Amazon Linux 2	          us-east-1	    ami-0c55b159cbfafe01a
Ubuntu 20.04 LTS	          us-east-1	    ami-0dba4d4f1a4d94c3e
Red Hat EnterpriseLinux 8  	us-east-1	    ami-0a1234567890abcdef
Windows Server 2019	        us-east-1	    ami-0b1234567890abcdef
*/
