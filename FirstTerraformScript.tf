provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "AWSEC2Instance"{
   ami = "ami-0f8ca728008ff5af4"
   instance_type = "t2.micro"
   security_groups = ["launch-wizard-2"]
   key_name = "keypair"
   tags = {
    Name = "Ubuntu_Terraform"
    Environment = "dev"
   }
}
