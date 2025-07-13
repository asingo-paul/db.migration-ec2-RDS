provider "aws" {

  region = "eu-north-1"
}

resource "aws_security_group" "ec2_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH from anywhere"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_vpc" "default" {
  default = true
}



resource "aws_instance" "ecdb" {

  ami           = "ami-042b4708b1d05f512"
  instance_type = "t3.micro"
  key_name      = "aws_key_pair"
  vpc_security_group_ids = [aws_security_group.ec2_ssh.id]

  tags = {
    Name = "ec2dbs"
  }
}