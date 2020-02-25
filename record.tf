resource "aws_route53_zone" "proj_domain" {
  name = var.project_domain
}

resource "aws_route53_record" "A"{
  zone_id         = aws_route53_zone.proj_domain.zone_id 
  type            = "A"
  allow_overwrite = true
  name            = var.fqdn
  ttl             = var.ttl
  records         = [ var.target_ip ]
}
