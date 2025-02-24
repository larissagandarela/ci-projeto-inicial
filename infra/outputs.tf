output "ec2_public_ip" {
  description = "O endereço IP público da instância EC2 onde a aplicação Go está rodando"
  value       = aws_instance.go_app.public_ip
}

output "rds_endpoint" {
  description = "O endpoint do banco de dados PostgreSQL no Amazon RDS"
  value       = aws_db_instance.postgres.endpoint
}

output "rds_port" {
  description = "A porta do banco de dados PostgreSQL"
  value       = aws_db_instance.postgres.port
}
