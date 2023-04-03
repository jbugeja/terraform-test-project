output "load_balancer_dns_name" {
  value = aws_lb.loadbalancer.dns_name
}

output "target_group_arn" {
  value = aws_lb_target_group.lb_target_group.arn
}

output "load_balancer_dns_IP" {
  value = aws_lb.loadbalancer.dns_name
}

output "zone_id" {
  value = aws_lb.loadbalancer.zone_id
}