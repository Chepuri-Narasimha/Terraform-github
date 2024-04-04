resource "aws_eks_addon" "cw_csi_addon" {
  addon_name   = "amazon-cloudwatch-observability"
  cluster_name = aws_eks_cluster.eks_cluster.name
# addon_version               = "v1.10.1-eksbuild.1" #e.g., previous version v1.9.3-eksbuild.3 and the new version is v1.10.1-eksbuild.1
  service_account_role_arn    = aws_iam_role.eks_cw_csi_driver.arn
  depends_on = [aws_eks_node_group.eks_ng_public,
                aws_iam_role_policy_attachment.amazon_cw_csi_driver]
}

output "cw_csi_addon_arn" {
  value = aws_eks_addon.cw_csi_addon.arn 
}

output "cw_csi_addon_id" {
  value = aws_eks_addon.cw_csi_addon.id
}