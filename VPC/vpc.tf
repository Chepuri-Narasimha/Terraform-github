#Creating VPC with module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.1"
  
  name = "VPC-DEV"
  cidr = "10.0.0.0/16"
  azs                 = ["ap-south-2a", "ap-south-2b", "ap-south-2c"]
#  private_subnets     = ["10.0.2.0/24"]
  public_subnets      = ["10.0.101.0/24"]

  # Database Subnets
  database_subnets    = ["10.0.151.0/24"]
  create_database_subnet_group = true
  create_database_subnet_route_table= true

#  enable_nat_gateway = true
#  single_nat_gateway = true
  enable_dns_hostnames = true
  enable_dns_support = true

  public_subnet_tags = {
    Type = "public-subnets"
  }
/*
  private_subnet_tags = {
    Type = "private-subnets"
  }*/
  database_subnet_tags = {
    Type = "database-subnets"
  }
#common tags
  tags = {
    Owner = "Bala"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "vpc-dev"
  }
  # Instances launched into the Public subnet should be assigned a public IP address.
  map_public_ip_on_launch = true
}