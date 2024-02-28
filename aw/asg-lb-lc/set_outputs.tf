output "op_alb-dns-name" {
  description = "The domain name of the load balancer"
  value       = aws_lb.aw_lb.dns_name
}

output "op_asg_name" {
  value       = aws_autoscaling_group.aw_auto-scag.name
  description = "The name of the Auto Scaling Group"
}

output "op_alb_security_group_id" {
  value       = aws_security_group.aw_sg_alb.id
  description = "The ID of the Security Group attached to the ALB"
}