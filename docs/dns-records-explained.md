# DNS Records Explained

## NS Records

Name Server records identify which DNS servers are authoritative for the domain.

In this setup, AWS Route 53 name servers are authoritative for the domain.

## MX Records

Mail Exchange records tell sending mail servers where to deliver email.

In this setup, MX records point to Namecheap Private Email.

## SPF Record

SPF is published as a TXT record.

It authorises the email provider to send email on behalf of the domain.

SPF helps reduce spoofing and improves the trustworthiness of outbound email.

## DKIM

DKIM digitally signs outbound email.

Where supported by the email provider, DKIM should be configured and the DNS record should be added to Route 53.

## DMARC

DMARC builds on SPF and DKIM.

It tells receiving mail systems what to do when an email fails authentication.

A monitoring policy can be used first before moving to stricter enforcement.

## CNAME Records

CNAME records are commonly used for:

- SSL/TLS certificate validation
- Service verification
- Subdomain aliases
- Cloud service mappings

## A and Alias Records

A records map a domain to an IP address.

Route 53 Alias records can point a domain or subdomain to supported AWS resources such as CloudFront.

---

## DNS Validation with `dig`

This repository includes real DNS validation screenshots captured with `dig`.

Useful validation commands include:

```bash
dig poulmhiripiri.co.uk NS
dig poulmhiripiri.co.uk MX
dig poulmhiripiri.co.uk TXT
dig poulmhiripiri.co.uk SOA
dig +short poulmhiripiri.co.uk NS
dig +short poulmhiripiri.co.uk MX
dig +short poulmhiripiri.co.uk
```

These commands help confirm name server delegation, mail routing, email authentication, hosted-zone authority, and web-facing DNS records.

See: [DNS Validation Evidence](dns-validation-evidence.md)
