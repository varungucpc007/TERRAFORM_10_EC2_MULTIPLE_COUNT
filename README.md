# TERRAFORM_10_EC2_MULTIPLE_COUNT

## Project Overview

This Terraform project creates multiple EC2 instances using the `count` meta-argument. It is useful for learning how to create repeated resources with less code.

## What This Project Creates

- Multiple EC2 instances
- Number of instances controlled by a variable
- Common configuration for all instances
- Output values for instance IDs and public IPs

## Technologies Used

| Technology | Purpose |
| --- | --- |
| Terraform | Infrastructure as Code |
| AWS EC2 | Virtual servers |
| `count` | Multiple resource creation |

## Recommended Files

```text
TERRAFORM_10_EC2_MULTIPLE_COUNT/
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## Count Concept

The `count` argument lets Terraform create multiple copies of the same resource.

Example:

```hcl
resource "aws_instance" "web" {
  count         = 3
  ami           = var.ami_id
  instance_type = var.instance_type
}
```

## Prerequisites

- AWS account
- Terraform installed
- AWS CLI configured
- Valid AMI ID
- EC2 permissions

## Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

Type `yes` when prompted.

## Verify Instances

```bash
aws ec2 describe-instances
```

Or check the EC2 Dashboard in AWS Console.

## Destroy Resources

```bash
terraform destroy
```

## Important Notes

- Increasing count creates more instances.
- Decreasing count destroys extra instances.
- Be careful when changing count in production.
- Multiple EC2 instances can create AWS charges.
