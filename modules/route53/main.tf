resource "aws_route53_zone" "main" {
  name = var.domain_name
}

resource "aws_route53_record" "lb_dns" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.domain_name
  type    = "A"
  alias {
    name                   = var.records
    zone_id                = var.zone_id
    evaluate_target_health = true
  }
}
