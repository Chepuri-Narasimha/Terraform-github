resource "aws_eks_addon" "csi_driver" {
  cluster_name                = aws_eks_cluster.eks_cluster.name
  addon_name                  = "aws-ebs-csi-driver"
# addon_version               = "v1.10.1-eksbuild.1" #e.g., previous version v1.9.3-eksbuild.3 and the new version is v1.10.1-eksbuild.1
  service_account_role_arn    = aws_iam_role.eks_ebs_csi_driver.arn
  depends_on = [aws_eks_node_group.eks_ng_private,
                aws_iam_role_policy_attachment.amazon_ebs_csi_driver]
}

output "csi_driver_arn" {
  value = aws_eks_addon.csi_driver.arn 
}

output "csi_driver_id" {
  value = aws_eks_addon.csi_driver.id
}