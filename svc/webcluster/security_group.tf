resource "aws_security_group" "aw_sg_instances" {
  name = "${var.env}-aw_sg_instances"
  ingress {
    from_port   = var.srv_port_http
    to_port     = var.srv_port_http
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aw_sg_alb" {
  name = "${var.env}-aw_sg_alb"
}