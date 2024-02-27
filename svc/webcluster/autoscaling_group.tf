resource "aws_autoscaling_group" "aw_auto-scag_lx" {

  launch_configuration = aws_launch_configuration.aw_laun-conf_lx.name
  vpc_zone_identifier  = data.aws_subnets.aw_d-subn-vpc-default.ids

  target_group_arns = [aws_lb_target_group.aw_lb-targ-gro.arn]
  health_check_type = "ELB"

  min_size = var.min_size
  max_size = var.max_size

  tag {
    key                 = "Name"
    value               = "${var.env}-ASG_LX"
    propagate_at_launch = true
  }

}