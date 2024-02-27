resource "aws_lb_listener" "aw_lb-listener-webserverclusteralb" {
  load_balancer_arn = aws_lb.aw_lb-webserverclusteralb.arn
  port              = local.http_port
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "404: page not found"
      status_code  = 404
    }
  }
}