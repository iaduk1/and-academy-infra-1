variable "dns" {
  default = "aa.dekker-and.digital"
}

resource "aws_route53_zone" "main" {
  name = var.dns
}

output "main_name_servers" {
  value = aws_route53_zone.main.name_servers
}

resource "aws_route53_record" "main-txt" {
  zone_id = aws_route53_zone.main.id
  name = var.dns
  type = "TXT"
  records = [
   
ns-1937.awsdns-50.co.uk.
ns-1162.awsdns-17.org.
ns-72.awsdns-09.com.
ns-748.awsdns-29.net.
  ]
  ttl = 900
}
/*
resource "aws_route53_record" "ya-che" {
  name = "ya.dekker-and.digital"
  type = "ns"
  zone_id = ""
  records = [
  ]
}
*/
/*
resource "aws_route53_record" "splink-zone" {
  name = "ya.${var.dns}"
  zone_id = aws_route53_zone.club-dns.id
  type = "NS"
  ttl = 900
  records = [
    "ns-1534.awsdns-63.org",
    "ns-1656.awsdns-15.co.uk",
    "ns-497.awsdns-62.com",
    "ns-688.awsdns-22.net"
  ]
}
*/
