
/*
module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "bastion-host-${local.name}"
  
  ami                    = data.aws_ami.ami_linux2.id
  instance_type          = var.instance_types
  key_name               = var.key_pair
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  tags                   = local.common_tags
}

*/