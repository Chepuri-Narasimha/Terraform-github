variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "eu-west-1"  
}

variable "Owner" {
  type = string
}

variable "Environment" {
  type = string
  default = ""
}

#bastion variables 

variable "instance_types" {
  description = "instance_type"
  type = string 
  default = "t3.micro"  
}

variable "key_pair" {
  type = string
  default = "Jenkins-server"
}