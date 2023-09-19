resource "aws_instance" "web" {
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = var.instance_type_map["db"]

  tags = {
    Name = "test-ec2"
  }
}
