# Terraform Workspace: 

## Overview

This Terraform workspace is designed to provision and manage infrastructure for AWS. It uses Terraform to define and deploy the infrastructure as code.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Folder Structure](#folder-structure)


## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [Provider-specific CLI/tools (e.g., AWS CLI for AWS)](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)

## Getting Started

1. Clone this repository:

    ```bash
    git clone [https://github.com/Akki07861/Terrafrom-Begineer-to-Pro]
    cd [D7]
    ```

2. Set up your Terraform workspace:

    ```bash
    terraform init
    terraform workspace new dev
    terraform workspace new prod
    terraform workspace new stage
    terraform workspace select dev
    terraform init
    ```

3. Review and customize the `terraform.tfvars` file with your specific configuration.
    If you are not able to understand the code from main.tf
    then simply create the
 ``   1. dev.tfvars
    2. stage.tfvars
    3. prod.tfvars
   ``
   in active current directory.
   change the files
## main.tf  
  ```
    provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "value"
  
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = var.instace_type
}
  ```
## dev.tfvars
```
ami = "ami-0440d3b780d96b29d"
instance_type = "t2.micro"
```
## stage.tfvars
```
ami = "ami-0440d3b780d96b29d"
instance_type = "t2.medium"
```
## prod.tfvars
```
ami = "ami-0440d3b780d96b29d"
instance_type = "t2.xlarge"
```

4. Deploy the infrastructure:

    ```bash
    terraform apply
    ```

## Usage

- To deploy the infrastructure, run:

    ```bash
    terraform apply
    ```

- To destroy the infrastructure, run:

    ```bash
    terraform destroy
    ```

## Folder Structure

- **main.tf**: Main Terraform configuration file.
- **variables.tf**: Variable declarations.
- **terraform.tfvars**: Variable values (should not be committed to version control).
- **outputs.tf**: Output declarations.



