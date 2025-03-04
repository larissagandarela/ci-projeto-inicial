resource "aws_db_instance" "postgres" {
  allocated_storage    = 10
  db_name              = "root"
  engine               = "postgres"
  instance_class       = "db.t3.micro"
  username             = "postgres"
  password             = "rootroot"
  skip_final_snapshot  = true
  publicly_accessible  = true

  depends_on = [aws_security_group.go_app_sg]
}
