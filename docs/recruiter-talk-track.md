# Recruiter Talk Track

## 30-Second Summary

This project demonstrates how I designed a low-cost professional domain, DNS, email and SSL/TLS setup using AWS Route 53, AWS Certificate Manager and Namecheap Private Email.

It reflects my background as a Core Network Engineer in an ISP environment and as an IT Networks and Infrastructure Support Manager in banking. The repository shows practical knowledge of DNS, MX records, SPF, cloud certificates, AWS IAM, MFA, billing awareness and secure infrastructure design.

## 60-Second Summary

I created this repository to show how individuals, startups, charities and small businesses can build a professional online identity without expensive monthly subscriptions.

The design uses AWS Route 53 for domain registration and authoritative DNS, Namecheap Private Email for low-cost mailbox hosting, MX records for inbound email routing, SPF for email authentication, and AWS Certificate Manager for SSL/TLS certificates.

The same domain can also support AWS-hosted websites, S3 static sites, CloudFront distributions, Amplify apps and controlled EC2 labs.

From a security perspective, the setup uses MFA on both AWS and Namecheap, with different MFA providers. AWS root access is retained for billing administration, while a restricted IAM user is used for operational services such as Route 53, Certificate Manager, S3, EC2 and CloudWatch Logs.

This project demonstrates hands-on infrastructure thinking: secure the accounts, separate duties, document DNS records, keep email routing simple, and monitor billing to prevent accidental cloud costs.

## Interview Talking Points

- I understand DNS from both ISP and enterprise infrastructure environments.
- I can configure domain name servers, MX records, SPF records and certificate validation records.
- I understand the difference between domain registration, DNS hosting, email hosting and web hosting.
- I use MFA and IAM separation to reduce risk in cloud environments.
- I understand cloud cost risks and avoid unnecessary always-on resources.
- I can translate infrastructure knowledge into affordable solutions for real users and small organisations.
- I document technical designs clearly so that others can reuse and understand them.
