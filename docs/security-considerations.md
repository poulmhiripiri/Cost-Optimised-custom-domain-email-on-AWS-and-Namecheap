# Security Considerations

## Account Security

The implementation uses MFA for both AWS and Namecheap.

A stronger design choice is to use different MFA providers for each platform. This reduces the risk of one MFA provider becoming a single point of failure.

## AWS Root Account Usage

The AWS root account should not be used for daily operations.

In this setup, root access is retained for billing administration and high-privilege account actions only.

## IAM User Access

An IAM user is used for operational administration. Access is restricted to the services needed for this project, such as:

- Route 53
- AWS Certificate Manager
- S3
- EC2 creation for labs
- CloudWatch Logs

This supports the principle of least privilege.

## Email Security

Recommended email security controls include:

- Strong mailbox passwords
- MFA where supported
- SPF record
- DKIM record where available
- DMARC monitoring record
- Review of suspicious login activity
- Avoiding unnecessary mailbox forwarding

## DNS Security

Recommended DNS controls include:

- Document all DNS records
- Review changes before applying them
- Restrict who can edit Route 53
- Protect AWS credentials
- Avoid exposing unnecessary public records
- Keep certificate validation records documented

## Cost Security

Cloud security includes cost protection.

Unexpected costs can be caused by:

- EC2 instances left running
- NAT Gateways
- Load Balancers
- RDS databases
- Elastic IP addresses
- Excessive CloudWatch logs
- High data transfer
- Route 53 health checks

Recommended controls:

- Create budget alerts
- Review billing regularly
- Delete unused resources
- Use S3 and CloudFront for simple static websites
- Stop or terminate lab EC2 instances when not in use
