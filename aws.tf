# Provider aws is needed to launch ec2 instance on aws
# Add access key and secret key with token (if needed) to access your aws account
provider "aws" {
  region        = "us-east-1"
  access_key    = "ASIA2O7B4QYLZMYKUYFK"
  secret_key    = "umnk+HJLXZ9SttY46ONyvAgrxghvxIKPuXrOG90q"
  token         = "FwoGZXIvYXdzEOL//////////wEaDBnIORECm2md3maqSCK5AYcQ+PMM+gUdvWs5Df3n7Blvpvev14F3IWevIzNWJkPFleRJgePH+WHUZqFZzwzgH5/VOvjbfsCgpqWtMabe8uNxIAfMm8NkELZMk5YNXTRI52LEIRSFAgD/gq5Cdyng6vPklUzfPZiSAGXfZMfEGUThWHzaDTrzCTT1epFhmLfA2NaMCChcl46gphUmEFVC4SYdK35X3MK27s7TDomKdMplbTWY1kr+ia7d7783vGydOzUNO0WToka8KPWvjf4FMi2Zd9/ab3AScRSdfKYG3hTqBv9cwBae4+YScMqWx5sIhqYC6S4qQAzuJFGnUy4="
}

# 'aws_instance' is a resource used to create ec2 instances.
# ami id is of RHEL8 system with t2.micro (i.e.1cpu and 1gb RAM) , choosing security group already created with key file name
resource "aws_instance" "rhel" {
  ami           = "ami-096fda3c22c1c990a"
  instance_type = "t2.micro"
  key_name      = "k1"
  vpc_security_group_ids = [
      "sg-1d045821",
  ]
  tags = {
    Name        = "terraform_instance"
  }
  }
