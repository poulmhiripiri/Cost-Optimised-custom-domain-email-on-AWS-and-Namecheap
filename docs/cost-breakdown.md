# Cost Breakdown

## Cost Objective

The objective of this project is to maintain a professional domain, email and cloud experimentation environment at very low annual cost.

## Main Cost Areas

| Cost Area | Description |
|---|---|
| Domain registration | Yearly domain ownership cost |
| Route 53 hosted zone | DNS hosting for the domain |
| Namecheap Private Email | Low-cost mailbox hosting |
| AWS Certificate Manager | Public SSL/TLS certificates for supported AWS services |
| S3 / CloudFront / Amplify | Optional hosting for static websites and cloud demos |
| EC2 | Optional lab server use only when required |

## Cost Optimisation Principles

- Keep the architecture modular
- Use affordable email hosting
- Use Route 53 for DNS control
- Use ACM for AWS-integrated SSL/TLS certificates
- Prefer S3 and CloudFront for static sites
- Avoid running EC2 permanently unless necessary
- Avoid NAT Gateway unless the architecture requires it
- Avoid unused Load Balancers
- Set CloudWatch log retention
- Review billing often
- Use AWS Budget alerts

## Why This Matters

For individuals, startups, churches, charities and small businesses, infrastructure cost matters.

This setup provides professional branding and cloud flexibility while avoiding unnecessary platform subscription costs.
