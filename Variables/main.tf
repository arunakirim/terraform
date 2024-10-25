resource "aws_iam_user" "UAT_Users" {
  name = lookup(var.users_UAT, "username", "ArunakiriM")
  tags = {
    Address     = var.Users_details.address
    phonenumber = var.Users_details.phonenumber
    department  = var.Users_details.department

  }
}

output "IAM_Users" {
  value = "The IAM users ${aws_iam_user.UAT_Users.arn}"
}
