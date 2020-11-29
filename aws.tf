# Provider aws is needed to launch ec2 instance on aws
# Add access key and secret key with token (if needed) to access your aws account
provider "aws" {
  region        = "us-east-1"
  access_key    = "***"
  secret_key    = "***"
  token         = "***"
# 'aws_instance' is a resource used to create ec2 instances.
# ami id is of RHEL8 system with t2.micro (i.e.1cpu and 1gb RAM) , choosing security group already created with key file name
resource "aws_instance" "rhel" {
  ami           = "ami-096fda3c22c1c990a"
  instance_type = "t2.micro"
  key_name      = "***"
  vpc_security_group_ids = [
      "***",
  ]
  tags = {
    Name        = "terraform_instance"
  }
  }
