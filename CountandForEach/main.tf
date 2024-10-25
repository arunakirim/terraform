resource "aws_instance" "Webservers" {
  instance_type = "t2.micro"
  ami           = "ami-06b21ccaeff8cd686"
  count         = length(var.Webservers)
  tags = {
    description = var.Webservers[count.index]
  }

}

resource "aws_instance" "AppServers" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"
  for_each      = var.AppServers

  tags = {
    Name = each.value
  }
}
