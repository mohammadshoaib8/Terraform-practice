🚀 Terraform VPC + EC2 Project (AWS Hands-On Lab)






This project demonstrates how to build a complete AWS VPC infrastructure using Terraform, following production-grade DevOps best practices.

📌 Architecture Overview
🔽 High-Level Diagram

(Image loads directly in GitHub/LinkedIn)

VPC  
 ├── 2 Public Subnets (ap-southeast-1a & 1b)
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

🧩 What This Terraform Code Creates
Resource	Description
VPC	Custom 10.0.0.0/16
2 Public Subnets	ap-southeast-1a & ap-southeast-1b
Internet Gateway	Enables outbound internet
Route Table	Public route + IGW
EC2 Instance	Ubuntu, t3.micro
Security Group	SSH allowed (port 22)
⚙️ Key Terraform Features Used
1️⃣ Dynamic AMI Fetching (Data Source)
data "aws_ami" "latest" {
  most_recent = true
  owners = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-noble-*"]
  }
}

2️⃣ Variables Instead of Hardcoding
variable "vpc_cidr" {}
variable "instance_type" {}
variable "public_subnet_a" {}

3️⃣ Output Values for Debugging
output "instance_public_ip" {
  value = aws_instance.myvm.public_ip
}

🚀 How to Run This Project
1️⃣ Configure AWS Credentials (Best Practice)

Do NOT hardcode access keys.
Use environment variables:

export AWS_ACCESS_KEY_ID="xxxx"
export AWS_SECRET_ACCESS_KEY="xxxx"
export AWS_DEFAULT_REGION="ap-southeast-1"

2️⃣ Initialize Terraform
terraform init

3️⃣ Validate Configuration
terraform validate

4️⃣ View the Plan
terraform plan

5️⃣ Deploy Infrastructure
terraform apply -auto-approve

6️⃣ Destroy When Done
terraform destroy -auto-approve

📤 Sample Outputs
vpc_id               = vpc-08a2ab3491
subnet_a_id          = subnet-02371fa91
instance_public_ip   = 18.141.91.10
instance_id          = i-0cabc1a23def

📚 Learnings From This Project

✔ Never hardcode AWS Secrets
✔ Use Terraform Registry Docs → search → pick → implement
✔ Use variables to avoid repeating values
✔ Use data sources for dynamic & latest AMI values
✔ Split infrastructure into multiple .tf files
✔ Use GitHub for version control
✔ Test infra thoroughly after deployment

🖼 Bonus: GitHub Banner Image for Your Repo

Use this at the top of your README:

🧑‍💻 Author

Shaik Mohammad Shoaib
DevOps Engineer | AWS | Terraform | Docker | Kubernetes | CI/CD
🚀 Actively looking for DevOps roles
