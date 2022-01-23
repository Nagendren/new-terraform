# Terraform
##  _codes in this repo are compatible with Terraform v1.1.4_

Terraform is an open-source infrastructure as code software tool. 

we have very good documentation in "https://www.terraform.io/docs". Examples used in this repo are referred from the abve url.

This repo covers terraform basic and aws-terraform with examples. Readme files inside the folders has enough informations.

```sh
NOTE: Never commit your ssh keys or aws secrets to git repo.
```
> If you commit your aws secrets by mistake,
> AWS has micro level of monitoring where it will detect the commit with secerts and access will be restrcited for the particular IAM user.
> You need to rotate the keys or create new users for future use. 
> Thanks to AWS for this detailed monitoring

This text you see here is *actually- written in Markdown! To get a feel
for Markdown's syntax, type some text into the left window and
watch the results in the right.

## Prerequisite
- Install terraform
- create terraform.tfvars and add your secrets
- Run terraform init before every run

## Creator and Maintainer
_Nagendren Rajmohan_
