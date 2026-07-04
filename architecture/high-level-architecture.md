# High-Level Architecture

```mermaid
flowchart TD
    A[Internet Users] --> B[Custom Domain]
    B --> C[AWS Route 53]

    C --> D[Namecheap Private Email]
    C --> E[AWS Certificate Manager]
    C --> F[AWS Hosting Services]

    D --> D1[Inbound Email via MX]
    D --> D2[Outbound Email with SPF / DKIM / DMARC]

    E --> E1[SSL/TLS Certificate]

    F --> F1[S3]
    F --> F2[CloudFront]
    F --> F3[Amplify]
    F --> F4[EC2 Labs]

    G[Restricted IAM User] --> C
    G --> E
    G --> F
    G --> H[CloudWatch]

    I[Root Account] --> J[Billing]
```

## Design Principles

- Keep email hosting separate from DNS hosting
- Use Route 53 as the central DNS control plane
- Use Namecheap for low-cost mailbox hosting
- Use AWS Certificate Manager for cloud-hosted SSL/TLS
- Use IAM instead of root for daily administration
- Use MFA on all critical accounts
- Monitor AWS billing regularly
