data "terraform_remote_state" "esk" {
    backend = "s3"
    config = {
      bucket = "aws-eks-demo-bucket"
      key = "dev/terraform.tfstate"
      region = var.aws_region    
      }
}
