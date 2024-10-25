resource "aws_iam_user" "Admin_usrs" {
  name = "Junxu"
  tags = {
    description = "Finance User"
  }

}
resource "aws_iam_policy" "Administrator" {
  name   = "OCBC-Administrators"
  policy = <<EOF
  {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::example-bucket"
    }
  ]
}
  EOF
}

resource "aws_iam_user_policy_attachment" "attach_administrators" {
  user       = aws_iam_user.Admin_usrs.id
  policy_arn = aws_iam_policy.Administrator.id
}
