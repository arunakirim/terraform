resource "aws_vpc" "My-VPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    description = "Finance"
  }
}
resource "aws_subnet" "my-subnet" {
  vpc_id     = aws_vpc.My-VPC.id
  cidr_block = "10.0.2.0/24"
  tags = {
    description = "Finance"
  }
}
resource "aws_security_group" "secgrp" {
  name   = "secgrp"
  vpc_id = aws_vpc.My-VPC.id
  dynamic "ingress" {
    iterator = port
    for_each = var.MyPorts
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

}
