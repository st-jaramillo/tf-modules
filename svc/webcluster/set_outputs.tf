output "outp_alb-dns-name" {
  description = "The domain name of the load balancer"
  value       = aws_lb.aw_lb-webserverclusteralb.dns_name
}

output "outp_asg_name" {
  value       = aws_autoscaling_group.aw_auto-scag_lx.name
  description = "The name of the Auto Scaling Group"
}

output "outp_alb_security_group_id" {
  value       = aws_security_group.aw_sg_alb.id
  description = "The ID of the Security Group attached to the ALB"
}