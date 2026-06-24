provider "aws" {
  region = "ap-south-1"
}

# Create IAM User
resource "aws_iam_user" "krishna_devops" {
  name = "Nidadavolu_Krishna_Mohan"
}

# Attach EC2 Full Access Policy
resource "aws_iam_user_policy_attachment" "ec2_access" {
  user       = aws_iam_user.krishna_devops.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

# Attach S3 Full Access Policy
resource "aws_iam_user_policy_attachment" "s3_access" {
  user       = aws_iam_user.krishna_devops.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}