# Terraform Settings Block
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
      version = ">= 5.31"
     }
    helm = {
      source = "hashicorp/helm"
      version = "~> 2.9"
    }
   
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "aws-eks-demo-bucket"
    key    = "dev/metrics-server/terraform.tfstate"
    region = "eu-west-1" 

    # For State Locking
    dynamodb_table = "metrics-server"    
  }     
}

# Terraform AWS Provider Block
provider "aws" {
  region = var.aws_region
}