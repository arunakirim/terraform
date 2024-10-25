resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name        = terraform.workspace
    Address     = var.Users_details.address
    phonenumber = var.Users_details.phonenumber
    department  = var.Users_details.department

  }
}

output "serverDetails" {
  value = <<EOF
    "The server ARN is ${aws_instance.server.arn}"
    "The server PUBLIC IP is ${aws_instance.server.public_ip}"
  EOF
}
