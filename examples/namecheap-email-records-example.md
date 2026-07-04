# Namecheap Email Records Example

Namecheap Private Email provides MX and TXT records that must be added to the authoritative DNS provider.

In this project, the authoritative DNS provider is AWS Route 53.

## Common Record Types

| Record | Purpose |
|---|---|
| MX | Routes inbound email to Namecheap |
| TXT SPF | Allows Namecheap to send email for the domain |
| DKIM | Digitally signs outbound email where available |
| DMARC | Defines handling of failed authentication |

## Implementation Notes

- Always copy the exact records from the email provider portal.
- Do not publish multiple conflicting SPF records.
- Use one SPF TXT record and include all authorised senders in that record.
- Test email delivery after DNS propagation.
