
/*****************************************************
 * Data source to get the hosted zone ID
 ****************************************************/
data "aws_route53_zone" "learndevtech" {
  name         = "learndevtech.com"
  private_zone = false
}

/*****************************************************
 * Create a certificate for the domain
 ****************************************************/
resource "aws_acm_certificate" "learndevtech_certificate" {
  domain_name       = "teamcity.learndevtech.com"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

/*****************************************************
 * Create a record for the API Gateway
 ****************************************************/
resource "aws_route53_record" "teamcity_domain_record_development" {
  allow_overwrite = true
  zone_id         = data.aws_route53_zone.learndevtech.zone_id
  name            = "teamcity.learndevtech.com"
  type            = "A"
  ttl             = "300"
  records         = [aws_instance.team_city_instance[0].public_ip]
}
