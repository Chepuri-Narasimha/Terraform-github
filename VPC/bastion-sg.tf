module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"
  name        = "${local.name}-public-bastion-sg"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = module.vpc.vpc_id

  #Ingress Rules
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules        = ["ssh-tcp"]

  #Egress Rules
  egress_rules      = ["all-all"]
  tags = local.common_tags
}