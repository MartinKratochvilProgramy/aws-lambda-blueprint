output "rds_instance_id" {
  value = aws_db_instance.default.id
}

output "rds_endpoint" {
  value = aws_db_instance.default.endpoint
}

output "rds_db_name" {
  value = aws_db_instance.default.db_name
}

output "username" {
  value = aws_db_instance.default.username
}

output "password" {
  value = aws_db_instance.default.password
}
