variable "ingress_ports" {
  type = list(number)
  default = [ 443, 22, 8080, 9090, 5990 ]
}

variable "egress_ports" {
  type = list(number)
  default = [ 7000, 9000, 9292, 8000 ]
}

resource "aws_security_group" "allow_tls" {
  name        = "dev_sg"

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = port
    content {
        description      = "TLS from VPC"
        from_port        = port.value
        to_port          = port.value
        protocol         = "tcp"
        cidr_blocks      = ["98.87.76.56/32"]
    }
  }

  dynamic "egress" {
    for_each = var.egress_ports
    content {
        from_port        = egress.value
        to_port          = egress.value
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "dev_sg"
  }
}
