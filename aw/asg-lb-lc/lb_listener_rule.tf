resource "aws_lb_listener_rule" "aw_lb-listener-rule" {
  listener_arn = aws_lb_listener.aw_lb-listener.arn
  priority     = 100

  condition {
    path_pattern {
      values = ["*"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.aw_lb-targ-gro.arn
  }
}