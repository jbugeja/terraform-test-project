output "route53_zone_id" {
  value = aws_route53_zone.main.zone_id
}

output "route53_record_id" {
  value = aws_route53_record.lb_dns.id
}
