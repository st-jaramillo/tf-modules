resource "aws_security_group_rule" "aw_sgr_allowhttpinb" {
  type              = "ingress"
  security_group_id = aws_security_group.aw_sg_alb.id

  from_port   = local.http_port
  to_port     = local.http_port
  protocol    = local.tcp_protocol
  cidr_blocks = local.all_ips
}

resource "aws_security_group_rule" "aw_sgr_allowallout" {
  type              = "egress"
  security_group_id = aws_security_group.aw_sg_alb.id

  from_port   = local.any_port
  to_port     = local.any_port
  protocol    = local.any_protocol
  cidr_blocks = local.all_ips
}