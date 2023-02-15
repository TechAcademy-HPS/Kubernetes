provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "AWSEC2Instance"{
   ami = "ami-0f9d9a251c1a44858"
   instance_type = "t2.micro"
   security_groups = ["launch-wizard-2"]
   key_name = "keypair"
   tags = {
    Name = "Redhat_Terraform"
    Environment = "dev"
   }
