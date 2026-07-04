# Example only. Replace values with your own domain and provider records.
# Do not commit secrets or private domain values if the repository is public.

terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

data "aws_route53_zone" "domain" {
  name         = var.domain_name
  private_zone = false
}

resource "aws_route53_record" "mx" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = var.domain_name
  type    = "MX"
  ttl     = 300
  records = var.mx_records
}

resource "aws_route53_record" "spf" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = var.domain_name
  type    = "TXT"
  ttl     = 300
  records = [var.spf_record]
}

resource "aws_route53_record" "dmarc" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "_dmarc.${var.domain_name}"
  type    = "TXT"
  ttl     = 300
  records = [var.dmarc_record]
}
