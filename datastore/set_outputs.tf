output "outp_websrvclualb-dbaddress" {
  description = "Connect to the database at this endpoint"
  value       = aws_db_instance.aw_dbins-websrvclualb.address
}

output "outp_websrvclualb-dbport" {
  description = "The port the database is listening on"
  value       = aws_db_instance.aw_dbins-websrvclualb.port
}