# Setup Guide

## 1. Register the Domain

Register a custom domain using AWS Route 53 or another domain registrar.

In this project, the domain is registered through AWS.

## 2. Create or Confirm the Route 53 Hosted Zone

Create a public hosted zone in Route 53 for the domain.

Route 53 provides authoritative name servers for the domain. These name servers control DNS resolution for records such as MX, TXT, CNAME, A and Alias records.

## 3. Configure Namecheap Private Email

Create the mailbox in Namecheap Private Email.

Namecheap provides the email mailboxes, webmail access and email server details.

## 4. Add MX Records in Route 53

Copy the MX records provided by Namecheap and create them in the Route 53 hosted zone.

MX records tell the internet where to deliver email for the domain.

## 5. Add SPF Record in Route 53

Create the SPF TXT record provided by Namecheap.

SPF helps receiving mail servers confirm that Namecheap is authorised to send email for the domain.

## 6. Add DKIM and DMARC Where Available

Where supported, configure DKIM from the email provider and publish the required DNS record in Route 53.

Add a DMARC record to monitor and control how unauthenticated emails are handled.

## 7. Request an AWS Certificate Manager Certificate

Use AWS Certificate Manager to request a public SSL/TLS certificate for the domain or subdomain.

Use DNS validation and add the required CNAME validation record to Route 53.

## 8. Use the Domain for AWS Experiments

The domain can then be reused for:

- S3 static websites
- CloudFront distributions
- Amplify applications
- EC2 web server labs
- API Gateway endpoints
- Portfolio landing pages

## 9. Secure the Accounts

Recommended controls:

- Enable MFA on AWS
- Enable MFA on Namecheap
- Use different MFA providers where possible
- Keep AWS root account for billing and emergency tasks
- Use restricted IAM users for daily administration
- Avoid root account use for normal operations

## 10. Monitor Costs

Recommended controls:

- Review the AWS Billing dashboard
- Create AWS Budget alerts
- Delete unused resources
- Avoid unnecessary NAT Gateways, Load Balancers and always-on EC2 instances
- Set CloudWatch log retention where appropriate
