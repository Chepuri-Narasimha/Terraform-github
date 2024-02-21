locals {
  Owner = var.business_divsion
  Environment = var.Environment
  name = "${local.Owner}-${local.Environment}"
  common_tags = {
    Owner =  local.Owner
    Environment = local.Environment
  }
    eks_cluster_name = "${data.terraform_remote_state.esk.outputs.cluster_id}"  
}