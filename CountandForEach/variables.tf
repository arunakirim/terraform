variable "Webservers" {
  type    = list(string)
  default = ["Webserver2", "Webserver3"]
}

variable "AppServers" {
  type    = set(string)
  default = ["APP Server 1", "APP Server 2", "APP Server 3"]
}
