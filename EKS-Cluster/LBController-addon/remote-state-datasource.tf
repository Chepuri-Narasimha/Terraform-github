data "terraform_remote_state" "eks" {
    backend = "s3"
    config = {
      bucket = "aws-eks-demo-bucket"
      key = "dev/terraform.tfstate"
      region = var.aws_region    
      }
}
