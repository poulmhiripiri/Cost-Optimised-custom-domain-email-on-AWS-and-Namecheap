# Troubleshooting Guide

## Email Not Receiving

Check:

- MX records are present in Route 53
- MX values match the provider's instructions
- DNS propagation has completed
- The mailbox exists in Namecheap
- The sending domain is not blocked

## Email Goes to Spam

Check:

- SPF record is present
- DKIM is configured where available
- DMARC is configured
- The sending mailbox has a good reputation
- The email content does not look suspicious

## Certificate Validation Fails

Check:

- ACM validation CNAME exists in Route 53
- The certificate is requested in the correct AWS region for the target service
- DNS propagation has completed
- The domain name on the certificate matches the intended hostname

## Website Not Loading

Check:

- DNS record points to the correct AWS service
- CloudFront distribution is deployed
- S3 bucket policy or Origin Access Control is correct
- EC2 security group allows required traffic
- SSL certificate is attached to the correct service

## Unexpected AWS Charges

Check:

- EC2 running instances
- Elastic IP addresses
- NAT Gateways
- Load Balancers
- RDS databases
- CloudWatch log volume and retention
- Route 53 health checks
- Data transfer usage
