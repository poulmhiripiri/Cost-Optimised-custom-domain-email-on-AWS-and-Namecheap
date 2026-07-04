variable "aws_region" {
  description = "AWS region for provider configuration."
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "Domain name, for example example.com."
  type        = string
}

variable "mx_records" {
  description = "MX records provided by the email hosting provider."
  type        = list(string)
}

variable "spf_record" {
  description = "SPF TXT record value."
  type        = string
}

variable "dmarc_record" {
  description = "DMARC TXT record value."
  type        = string
  default     = "v=DMARC1; p=none; rua=mailto:dmarc@example.com"
}
