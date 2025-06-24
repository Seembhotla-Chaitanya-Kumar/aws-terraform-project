# AWS DevOps Project Terraform Infrastructure

This repository contains Terraform code to provision AWS infrastructure for a DevOps project that icludes a sample web server(Nginx) running on an EC2 instance. All resources are organized into reusable modules for clarity and maintainability.

## Overview

The infrastructure includes:

- VPC with public and private subnets
- Security groups for EC2 and load balancer
- An EC2 instance running Nginx
- Application Load Balancer (ALB) with HTTP and HTTPS listeners
- Target group for the ALB
- Route53 hosted zone and DNS records
- ACM certificate for HTTPS

## Prerequisites

Before using this Terraform code, ensure the following prerequisites are met:

1. **AWS Credentials**  
   - You must have AWS credentials configured on your machine.  
   - Set up credentials using the AWS CLI (`aws configure`) or by exporting `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` as environment variables.

2. **Custom Domain Name**  
   - You need to own a custom domain name (e.g., `example.com`) that you intend to use for your application.

3. **Hosted Zone in AWS Route53**  
   - Manually create a public hosted zone in AWS Route53 for your custom domain name before running Terraform.  
   - Ensure the hosted zone is active and the domain’s nameservers are correctly set at your domain registrar.


## Module Flow

The provisioning flow, as defined in [main.tf](main.tf), is as follows:

1. **Networking**  
   The [`networking`](networking/main.tf) module creates the VPC, public/private subnets, internet gateway, and route tables.

2. **Security Groups**  
   The [`security_group`](security-groups/main.tf) module provisions security groups for EC2 and ALB, allowing SSH (22), HTTP (80), and HTTPS (443).

3. **Nginx EC2 Instance**  
   The [`nginx`](nginx/main.tf) module launches an EC2 instance in a public subnet, using the security group and public key, and installs Nginx via user data.

4. **Load Balancer Target Group**  
   The [`lb_target_group`](load-balancer-target-group/main.tf) module creates a target group and attaches the Nginx EC2 instance.

5. **Application Load Balancer**  
   The [`alb`](load-balancer/main.tf) module provisions an Application Load Balancer, attaches the security group, configures listeners (HTTP/HTTPS), and registers the target group.

6. **Hosted Zone and DNS**  
   The [`hosted_zone`](hosted-zone/main.tf) module looks up the Route53 hosted zone and creates an alias record pointing the domain to the ALB.

7. **Certificate Manager**  
   The [`aws_ceritification_manager`](certificate-manager/main.tf) module requests an ACM certificate for the domain and creates the necessary DNS validation record in Route53.

## Usage

1. Clone the repository.
2. Configure your AWS credentials.
3. Adjust variables in [`terraform.tfvars`](terraform.tfvars) as needed.
4. Initialize and apply Terraform:

   ```sh
   terraform init
   terraform plan
   terraform apply