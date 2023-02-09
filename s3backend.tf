terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#Configure the AWS Provider
provider "aws"{
  region = "ap-south-1"
  access_key = "AKIAWJDJZ666JBJRYGND"
  secret_key = "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"
  }
resource "aws_dynamodb_table" "terraform_statelock"{
   cidr_block = "10.0.0.0/16"
   tags = {
    Name = "MyVpc"
   }
}
