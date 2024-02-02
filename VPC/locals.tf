locals {
  Owner = var.Owner
  Environment = var.Environment
  name = "${local.Owner}-${local.Environment}"
  common_tags = {
    Owner =  local.Owner
    Environment = local.Environment
  }
}