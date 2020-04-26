resource "aws_route53_record" "www" {
  # zone_id = "Z0733016W1GIU2Z10CNX"
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "www.tubaloughlin.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}
