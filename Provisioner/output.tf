output "instanceIP" {
  value = {
    for k, v in aws_instance.Webservers :
    k => v.public_ip
  }
}
