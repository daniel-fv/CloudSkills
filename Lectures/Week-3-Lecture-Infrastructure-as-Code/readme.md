# Infrastructure as Code

## Benefits of IaC
- Reduce the risk of change
- Faster Iteration
- More Reliable Systems
- Faster DR
- Improved speed of troubleshooting
- Governance and Security

## Core Practices of IaC
- Define everything as Code
    - Reusability
    - Consistency
    - Transparency
- Validate and Test
- Small Simple Pieces that you can change independently

## Configuration Management vs IaC
- IaC
    - **Terraform**
    
    
- Configuration management
    - Chef
    - Puppet
    - **Ansible**
        
## Pulumi vs Terraform
- Pulumi
    - Use programming languages like Python and JavaScript to manage infrastructure
    - Harder to transition to from SE role
    - Better higher level abstraction

- Terraform
    - Uses its own language called HashiCorp Configuration Language
    - Easier to understand and learn for most non-programmers
    - Functional limitations, relies on tools like Terragrunt for high level abstraction and functionality

## Types of Tests
- Static Analysis - Testing code without running it
- Unit Testing - Testing a single unit
- Integration Testing - Testing the functionality between two or more units
- End-to-End Testing - Testing an entire application infrastructure from the ground up

## Terraform installation
1. Download terraform https://www.terraform.io/downloads.html
2. Extract the binary that you downloaded to a directory (C:\terraform)
3. Add to the PATH environment variable to point the Terraform directory:
    - Control Panel -> Change Settings -> Advanced -> Environment Variables -> Select Path Variable -> Edit -> New -> Add the terraform directory
4. Test installation in PowerShell: 
```powershell
terraform test
```
## Directory naming conventions for terraform modules
terraform.aws.module_name/

For example:
```bash
terraform.aws.webserver/

main.tf
variables.tf
outputs.tf
```
