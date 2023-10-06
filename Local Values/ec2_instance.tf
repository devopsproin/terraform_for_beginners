locals {
  common_tags = {
    Team = "DevOps"
    Purpose = "Monitoring-App"
  }
}

resource "aws_instance" "dev" {
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.nano"
  # tags = {
  #   Team = "DevOps"
  #   Purpose = "Monitoring-App"
  # }
  tags = local.common_tags
}

resource "aws_instance" "prod" {
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.large"
  # tags = {
  #   Team = "DevOps"
  #   Purpose = "Monitoring-App"
  # } 
  tags = local.common_tags
}

resource "aws_ebs_volume" "volume" {
  availability_zone = "us-west-2a"
  size              = 40
  # tags = {
  #   Team = "DevOps"
  #   Purpose = "Monitoring-App"
  # }
  tags = local.common_tags
}
