provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "slave" {
  ami                    = "ami-01a4f99c4ac11b03c"
  instance_type          = "t2.micro"
  key_name               = "ANSH"
  availability_zone      = "ap-south-1a"
  vpc_security_group_ids = [aws_security_group.my-ec2-security.id]
  tags = {
    Environment = "dev"
    Name = "my-ec2-instance"
  } 
