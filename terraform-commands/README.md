**Terraform commands**

terraform plan     - Check your terraform changes before applying

terraform apply    - Applies the terraform changes

terraform show     - prints tfstate file in readable format

   **eg:** terraform show | grep public_ip - Will print only public ip

terraform output   - show the output value

terraform taint    - when we don't have any changes to infra, and if we run terraform apply no action will be performed. terraform taint can be used at this point.

  **eg:** terraform taint aws_instance.example - this will mark the instance as tainted and when we run terraform apply, new instance will be created.

terraform untaint  - will untaint the instance

 **eg:** terraform untaint aws_instance.example

terraform refresh  - will check for diff between remote state and local state

terraform fmt      - will do the standard formating

terraform get      - used to download the modules

