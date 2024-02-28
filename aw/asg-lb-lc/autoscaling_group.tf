resource "aws_autoscaling_group" "aw_auto-scag" {

  launch_configuration = aws_launch_configuration.aw_laun-conf.name
  vpc_zone_identifier  = data.aws_subnets.ds_subn-vpc-default.ids

  target_group_arns = [aws_lb_target_group.aw_lb-targ-gro.arn]
  health_check_type = "ELB"

  min_size = var.vr_min-size
  max_size = var.vr_max-size

  tag {
    key                 = "Name"
    value               = "${var.vr_env}-asg"
    propagate_at_launch = true
  }

}