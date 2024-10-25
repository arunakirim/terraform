resource "aws_instance" "Webservers" {
  instance_type = "t2.micro"
  ami           = "ami-06b21ccaeff8cd686"
  count         = length(var.Webservers)
  tags = {
    description = var.Webservers[count.index]
  }
  /*provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo systemctl start nginx"
    ]

  }*/
  provisioner "local-exec" {
    command = "echo Instance created with public IP: ${self.public_ip}"


  }

}

resource "aws_instance" "AppServers" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = var.AppServers

  tags = {
    Name = each.value
  }
}
