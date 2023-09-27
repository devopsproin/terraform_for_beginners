variable "instance_name" {
  type = list(string)
  default = [ "web-instance", "db-instance", "devops-instance" ]
}

variable "instance_type" {
  type = list(string)
  default = [ "t2.nano", "t2.micro", "t2.small" ]
}
