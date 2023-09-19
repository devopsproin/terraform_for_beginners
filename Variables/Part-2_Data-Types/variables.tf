variable cidr {
    default = "11.11.11.11/32"
}

# variable port-1 {
#     description = "Enter a number for port-1"
#     type = number
# }

# variable port-2 {
#     type = number
# }

# variable port-3 {
#     type = number
# }

# variable port-4 {
#     type = number
# }

variable port_numbers {
    description = "Enter four port numbers for inbound rules"
    type = list(number)
}

variable sg_name {
    description = "Enter a name for security group"
    type = string
}

variable instance_type_map {
  type = map(string)
  default = {
    "web" = "t2.nano"
    "db" = "t2.micro"
    "devops" = "t3.micro"
  }
}
