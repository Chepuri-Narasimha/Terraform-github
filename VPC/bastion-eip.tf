resource "aws_eip" "bastion_eip" {
  instance = module.ec2_public.id
  depends_on = [ module.ec2_public, module.vpc]
}