resource "aws_lb_target_group" "aw_lb-targ-gro" {
  name     = "${var.vr_env}-aw-lb-targ-gro"
  port     = var.vr_srvporthttp
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.ds_vpc-default.id

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