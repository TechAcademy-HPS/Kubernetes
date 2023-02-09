Configure the AWS Provider
provider "aws"{
  region = "ap-south-1"
  access_key = "AKIAWJDJZ666JBJRYGND"
  secret_key = "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"
  }

module "ec2" {
    source = "/var/lib/jenkins/workspace/terraform/Terraform/ec2"
}
 
 module "vpc" {
    source = "/var/lib/jenkins/workspace/terraform/Terraform/vpc"
}
