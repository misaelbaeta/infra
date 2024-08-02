# Infrastructure

  - An Infrastructure Repository (often abbreviated as "Infra Repo") is a version-controlled repository where the configuration and management of infrastructure components are defined and maintained. This approach is a key part of Infrastructure as Code (IaC) practices, allowing teams to manage their infrastructure using code, which can be versioned, reviewed, and audited like any other codebase.

## Requirements
  Terraform v1.9.3 or newer
  Kubectl
  AWS CLI



#### 1.
    
    Access folder Infra and Run to create:
     - bucket and state

    *terraform init* 
    *terraform apply* 
    
    



#### 2.
    Access folder Network and Run to create 
Terraform init
Terraform Apply to:
 - Create VPC 
 - Public and Private subnets
 - Internet_gateway

#### 3.
cd Path: *eks/*  
Terraform init
Terraform Apply
