resource "aws_lb" "aw_lb-webserverclusteralb" {
  name               = "${var.env}-aw-lb-webserverclusteralb"
  load_balancer_type = "application"
  subnets            = data.aws_subnets.aw_d-subn-vpc-default.ids
  security_groups    = [aws_security_group.aw_sg_alb.id]
}