🌐 Terraform VPC + EC2 Project (AWS Hands-On Lab)
<p align="left"> <img src="https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws&logoColor=white" /> <img src="https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform&logoColor=white" /> <img src="https://img.shields.io/badge/VPC-Networking-blue?logo=amazonaws" /> <img src="https://img.shields.io/badge/EC2-Compute-yellow?logo=amazonaws" /> <img src="https://img.shields.io/badge/DevOps-Engineer-green" /> <img src="https://img.shields.io/badge/HashiCorp-Provider-informational?logo=terraform" /> </p>
📌 Project Overview

This project demonstrates how to build a production-ready AWS VPC using Terraform, including:

Custom VPC

2 Public Subnets

Internet Gateway

Public Route Table

Route Table Associations

EC2 Instance (Ubuntu Latest)

Security Group

Dynamic AMI Fetch using Data Source

Variables & Outputs

Perfect for DevOps Engineers (1–3 years) to demonstrate real Terraform experience.

🏗️ Architecture Diagram
VPC (10.0.0.0/16)
 ├── Public Subnet A (10.0.1.0/24)
 ├── Public Subnet B (10.0.2.0/24)
 ├── Internet Gateway
 ├── Public Route Table → IGW
 └── EC2 Instance (Ubuntu)

📁 Project Structure
.
├── main.tf
├── variables.tf
├── outputs.tf
└── provider.tf

✔️ What This Terraform Code Deploys
Resource	Description
VPC	Custom 10.0.0.0/16 network
Public Subnets	Subnet A + Subnet B
Internet Gateway	Provides internet access
Route Table	Public RT + default route (0.0.0.0/0)
EC2 Instance	Ubuntu (latest), t3.micro
Security Group	SSH allowed (port 22)
Dynamic AMI	Using data source to fetch the latest Ubuntu image
Variables	No hard-coded values
Outputs	VPC ID, Subnet IDs, EC2 IP, etc.
👨‍💻 Sample Architecture Image (Add your own screenshot)

You can add your VPC diagram screenshot here:

![Architecture Diagram](https://your-image-link)


Or upload from your laptop in GitHub.

🚀 How to Run This Project
1️⃣ Configure AWS Credentials

Do NOT hardcode credentials.
Use environment variables:

export AWS_ACCESS_KEY_ID="xxxx"
export AWS_SECRET_ACCESS_KEY="xxxx"
export AWS_DEFAULT_REGION="ap-southeast-1"

2️⃣ Initialize Terraform
terraform init

3️⃣ Validate the Code
terraform validate

4️⃣ Preview Execution
terraform plan

5️⃣ Deploy the Infrastructure
terraform apply -auto-approve

6️⃣ Destroy Everything (Cleanup)
terraform destroy -auto-approve

📤 Sample Outputs
vpc_id               = vpc-08a2ab3491
subnet_a_id          = subnet-02371fa91
subnet_b_id          = subnet-0aa72134c
instance_public_ip   = 18.141.91.10
instance_id          = i-0cabc1a23def

📚 Learnings From This Project
✔️ 1. Do not hardcode credentials

Always use environment variables.

✔️ 2. Use Terraform Docs properly

Search → Understand Syntax → Implement

✔️ 3. Variables prevent code duplication

Everything becomes reusable.

✔️ 4. Data Sources fetch dynamic values

Like AMI, VPC, Subnets, SGs.

✔️ 5. outputs.tf helps debugging

Easily view resource IDs.

✔️ 6. Version control with GitHub

Commit after every working stage.

✔️ 7. Infrastructure Testing

Test after apply → ssh into EC2.

🧑‍💻 Author

Shaik Mohammad Shoaib
DevOps Engineer (AWS | Terraform | Docker | Kubernetes | CI/CD)

🔗 GitHub: add your link
🔗 LinkedIn: add your link

🚀 Open for DevOps roles & exciting opportunities!
