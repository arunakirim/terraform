variable "Webservers" {
  type    = list(string)
  default = ["Webserver2", "Webserver3"]
}

variable "AppServers" {
  type    = set(string)
  default = ["APP Server 1", "APP Server 2", "APP Server 3"]
}
variable "ami" {
  type    = string
  default = "ami-06b21ccaeff8cd686"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
