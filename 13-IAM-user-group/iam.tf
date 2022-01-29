#create group

resource "aws_iam_group" "learn_terraform" {
  name = "learn_terraform"
}

#attach policy to newly create group. We can attach aws managed policy or custome policy

resource "aws_iam_policy_attachment" "attach-policy" {
  name       = "learn_terraform_policy"
  groups     = [aws_iam_group.learn_terraform.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

#create User1

resource "aws_iam_user" "user1" {
  name = "user1"
}

#create user2

resource "aws_iam_user" "user2" {
  name = "user2"
}

#add users to group

resource "aws_iam_group_membership" "new_users" {
  name = "new_users"
  users = [
    aws_iam_user.user1.name,
    aws_iam_user.user2.name
  ]
  group = aws_iam_group.learn_terraform.name
}

output "warning" {
  value = "WARNING: make sure you're not using the AdministratorAccess policy for other users/groups/roles. If this is the case, don't run terraform destroy, but manually unlink the created resources"
}
