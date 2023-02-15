terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }
# }

#Configure the AWS Provider
provider "aws"{
  region = "ap-south-1"
  access_key = "AKIAWJDJZ666JBJRYGND"
  secret_key = "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"
  }

module "ec2" {
    source = "/var/lib/jenkins/workspace/terraform/Terraform/ec2"
}
 
#  module "vpc" {
#     source = "/var/lib/jenkins/workspace/terraform/Terraform/vpc"
# }
   
#  module "s3" {
#     source = "/var/lib/jenkins/workspace/terraform/Terraform/s3"
# }
