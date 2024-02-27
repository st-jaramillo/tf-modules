resource "aws_db_instance" "aw_dbins-websrvclualb" {
  identifier_prefix   = "${var.env}-${var.engine}-db-websrvclualb"
  engine              = var.engine
  allocated_storage   = var.allocated_storage
  instance_class      = var.instance_class
  skip_final_snapshot = true
  db_name             = var.db_name
  username            = var.udbadm
  password            = var.pdbadm
}