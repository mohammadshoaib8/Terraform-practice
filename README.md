Terraform VPC + EC2 Project (AWS Hands-On Lab)

This project demonstrates how to build a complete AWS VPC environment using Terraform, following production-grade best practices.
📌 Architecture Overview
VPC
 ├── 2 Public Subnets  
 ├── Internet Gateway  
 ├── Public Route Table  
 ├── Route Table Associations  
 └── EC2 Instance (Ubuntu latest AMI)

 📁 Project Structure
 .
├── main.tf
├── variables.tf
├── outputs.tf
└── provider.tf

What This Terraform Code Creates
Resource	Description
VPC	10.0.0.0/16 custom VPC
2 Public Subnets	ap-southeast-1a & ap-southeast-1b
Internet Gateway	Enables internet access
Route Table	Public route table + IGW route
EC2 Instance	Ubuntu, t3.micro
Security Group	Allows SSH from anywhere

1. Dynamic AMI selection using Data Sources
2. Variables instead of hardcoding
3. Output values for debugging.

🚀 How to Run This Project
1️⃣ Configure AWS Credentials

Do NOT hardcode credentials.
Use environment variables:

export AWS_ACCESS_KEY_ID="xxxx"
export AWS_SECRET_ACCESS_KEY="xxxx"
export AWS_DEFAULT_REGION="ap-southeast-1"

2️⃣ Initialize Terraform
terraform init

3️⃣ Validate the code
terraform validate

4️⃣ Preview execution
terraform plan

5️⃣ Deploy the infra
terraform apply -auto-approve

6️⃣ Destroy infra when done
terraform destroy -auto-approve


📤 Outputs (Sample)
vpc_id = vpc-08a2ab3491
subnet_a_id = subnet-02371fa91
instance_public_ip = 18.141.91.10
instance_id = i-0cabc1a23def


📚 Learnings From This Project

You must never hardcode secrets

Always use terraform docs → search → pick → implement

Use variables to avoid repeating values

Use data sources for dynamic values

Break code into multiple .tf files (modular structure)

Commit each change to GitHub → version control

Test infra after deployment.



🧑‍💻 Author

Shaik Mohammad Shoaib
DevOps Engineer | AWS | Terraform | Docker | Kubernetes | CI/CD
Open for DevOps roles 🚀
