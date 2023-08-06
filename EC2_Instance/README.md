# Create an EC2 Instance on AWS using Terraform
This guide provides step-by-step instructions for creating an EC2 instance on AWS using Terraform. Follow the sections below to set up your EC2 instance effortlessly.

## Steps :
### 1. Create ec2_instance.tf File
Create a file named ec2_instance.tf in your project directory and add the following content:
```
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "<access-key>"
  secret_key = "<secret-key>"
}

resource "aws_instance" "web" {
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_ec2"
  }
}
```

Replace <access-key> and <secret-key> with your AWS access and secret keys.

### 2. Initialize Terraform
Open your terminal, navigate to the directory containing ec2_instance.tf, and run the following command:
```
terraform init
```

This command initializes Terraform, downloads the necessary provider plugins, and prepares the working directory for configuration.

### 3. Generate Terraform Plan
To see what changes Terraform will apply, run the following command:
```
terraform plan
```

Terraform will analyze your configuration and display a preview of the resources that will be created or modified.

### 4. Apply Terraform Configuration
To create the EC2 instance, execute the following command:
```
terraform apply
```

Terraform will prompt you to confirm the changes. Type yes and press Enter. It will then provision the EC2 instance based on your configuration.
