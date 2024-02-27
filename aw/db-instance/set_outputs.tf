output "op_db-instance-address" {
  description = "Connect to the database at this endpoint"
  value       = aws_db_instance.aw_db-instance.address
}

output "op-db-instance-port" {
  description = "The port the database is listening on"
  value       = aws_db_instance.aw_db-instance.port
}