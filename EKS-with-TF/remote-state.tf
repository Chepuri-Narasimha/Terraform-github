data "terraform_remote_state" "eks" {
    backend = "local"
    
    config = {
      path = "../VPC/terraform.tfstate"
    }

}

#data.terraform_remote_state.eks.outputs.cluster_id