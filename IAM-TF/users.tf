# Resource: AWS IAM User 
resource "aws_iam_user" "eksreadonly_user" {
  name = "${local.name}-eksreadonly1"
  path = "/"
  force_destroy = true
  tags = local.common_tags
}

resource "aws_iam_user" "eksreadonly_user1" {
  name = "${local.name}-eksreadonly2"
  path = "/"
  force_destroy = true
  tags = local.common_tags
}

# Resource: AWS IAM Group Membership
resource "aws_iam_group_membership" "eksreadonly" {
  name = "${local.name}-eksreadonly-group-membership"
  users = [
    aws_iam_user.eksreadonly_user.name,
    aws_iam_user.eksreadonly_user1.name
  ]
  group = aws_iam_group.eksreadonly_iam_group.name
}
