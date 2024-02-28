resource "aws_lb" "aw_lb" {
  name               = "${var.vr_env}-aw-lb"
  load_balancer_type = "application"
  subnets            = data.aws_subnets.ds_subn-vpc-default.ids
  security_groups    = [aws_security_group.aw_sg_alb.id]
}