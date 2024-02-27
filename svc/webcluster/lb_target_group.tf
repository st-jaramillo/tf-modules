resource "aws_lb_target_group" "aw_lb-targ-gro" {
  name     = "${var.env}-AW-LB-TARG-GRO"
  port     = var.srv_port_http
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.aw_d-vpc-default.id

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 15
    timeout             = 3
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}