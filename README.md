# AWS 3-Tier Architecture with Terraform

## 📌 Overview

This project provisions a scalable and secure 3-tier architecture on AWS using Terraform.

## 🏗️ Architecture

* VPC with public and private subnets
* Internet Gateway & NAT Gateway
* Application Load Balancer (ALB)
* EC2 instances (application layer)
* RDS (database layer)

## ⚙️ Technologies

* AWS (EC2, VPC, RDS, ALB, IAM, CloudWatch)
* Terraform (Infrastructure as Code)
* Linux

## 🚀 Features

* Multi-AZ architecture
* Secure networking (public/private separation)
* Infrastructure fully automated with Terraform
* High availability design

## ▶️ Deployment

```bash
terraform init
terraform plan
terraform apply
```

## 📂 Project Structure

```
main.tf
modules/
```

