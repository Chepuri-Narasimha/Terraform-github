variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "ap-south-2"  
}

variable "Owner" {
  type = string
}

variable "Environment" {
  type = string
  
}

#bastion variables 

variable "instance_types" {
  description = "instance_type"
  type = string 
  default = "t3.micro"  
}

variable "key_pair" {
  type = string
  default = "eks-terraform"
}