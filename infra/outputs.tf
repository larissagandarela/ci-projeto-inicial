output "ec2_public_ip" {
  value = aws_eip.go_app_eip.public_ip
  description = "Elastic IP associado à instância EC2"
}

output "rds_endpoint" {
  description = "O endpoint do banco de dados PostgreSQL no Amazon RDS"
  value       = aws_db_instance.postgres.endpoint
}

output "rds_port" {
  description = "A porta do banco de dados PostgreSQL"
  value       = aws_db_instance.postgres.port
}

