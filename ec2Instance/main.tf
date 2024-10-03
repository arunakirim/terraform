resource "aws_instance" "WebSever" {
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"
  tags = {
    name = "Web server"
  }
}
