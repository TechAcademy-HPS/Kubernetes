terraform {
  required_providers {
   aws = {
        region = "ap-south-1"
       source  = "hashicorp/aws"
      version = "~> 4.0"  
   }
  }
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
