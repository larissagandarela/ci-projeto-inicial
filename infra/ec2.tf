resource "aws_instance" "go_app" {
  ami                    = "ami-0a31834d359d68156"
  instance_type          = "t2.micro"
  key_name               = "par-de-chaves"
  security_groups        = [aws_security_group.go_app_sg.name]
  associate_public_ip_address = true

  tags = {
    Name = "Go-App-EC2"
  }

  depends_on = [aws_security_group.go_app_sg]
}
