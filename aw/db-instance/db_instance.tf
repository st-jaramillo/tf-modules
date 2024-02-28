resource "aws_db_instance" "aw_db-instance" {
  identifier_prefix   = "${var.vr_env}-${var.vr_engine}-db-instance"
  engine              = var.vr_engine
  allocated_storage   = var.vr_allocated_storage
  instance_class      = var.vr_instance_class
  skip_final_snapshot = true
  db_name             = var.vr_db_name
  username            = var.vr_udbadm
  password            = var.vr_pdbadm
}