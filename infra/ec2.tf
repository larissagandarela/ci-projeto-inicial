resource "aws_instance" "go_app" {
  ami                         = "ami-014d544cfef21b42d"
  instance_type               = "t2.micro"
  key_name                    = "par-de-chaves"
  security_groups             = [aws_security_group.go_app_sg.name]
  associate_public_ip_address = true

  tags = {
    Name = "Go-App-EC2"
  }

  depends_on = [aws_security_group.go_app_sg]
}

resource "aws_eip" "go_app_eip" {
  instance = aws_instance.go_app.id
}
