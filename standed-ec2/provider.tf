terraform {
  #required_version = ">= 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_version = ">= 1.6.0"   
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31"
    }
  }
  
  backend "s3" {
      bucket = "aws-eks-demo-bucket"
      key = "dev/terraform.tfstate"
      region = "eu-west-1"

      dynamodb_table = "eks_cluster_key"    
  }
}

provider "aws" {
  region  = "eu-west-1"
}
