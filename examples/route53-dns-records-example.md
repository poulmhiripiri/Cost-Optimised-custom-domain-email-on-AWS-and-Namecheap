# Example Route 53 DNS Records

> Replace `example.com` with your own domain.

| Type | Name | Example Value | Purpose |
|---|---|---|---|
| NS | example.com | AWS Route 53 name servers | Authoritative DNS |
| MX | example.com | Namecheap mail server values | Email delivery |
| TXT | example.com | SPF value from Namecheap | Authorised email sending |
| TXT | _dmarc.example.com | DMARC policy | Email authentication policy |
| CNAME | selector._domainkey.example.com | DKIM provider value | DKIM validation |
| CNAME | validation.example.com | ACM validation value | SSL/TLS validation |
| A / Alias | example.com | CloudFront distribution | Website hosting |
| CNAME | www.example.com | CloudFront or Amplify target | Website alias |
