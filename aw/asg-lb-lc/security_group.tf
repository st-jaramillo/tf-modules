resource "aws_security_group" "aw_sg_instances" {
  name = "${var.vr_env}-aw_sg_instances"
  ingress {
    from_port   = var.vr_srvporthttp
    to_port     = var.vr_srvporthttp
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aw_sg_alb" {
  name = "${var.vr_env}-aw_sg_alb"
}