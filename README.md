# Terraform
##  _codes in this repo are compatible with Terraform version >=0.12_

Terraform is an open-source infrastructure as code software tool. 

we have very good documentation in "https://www.terraform.io/docs". Examples used in this repo are referred from the abve url.

This repo covers,

- terraform basic
- terraform Advance
- terraform with AWS

```sh
NOTE: Never commit your ssh keys or aws secrets to git repo.
```
> If you commit your aws secrets by mistake,
> AWS has micro level of monitoring where it will detect the commit with secerts and access will be restrcited for the particular IAM user.
> You need to rotate the keys or create new users for future use. 
> Thanks to AWS for this detailed monitoring



## Prerequisite
- You should have basic understanding of terraform
- Install terraform
- create terraform.tfvars and add your secrets
- Run terraform init before every run
- If you want to maintain provider version, commit your terraform lock file to repo

## Creator and Maintainer
_Nagendren Rajmohan_
