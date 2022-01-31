# Terraform commands
```python
command: terraform plan
Description: Check your terraform changes before applying
```
```python
command: terraform plan -out filename 
Description: store the terraform changes in a file and used during terrform apply filename
```
```python
command: terraform apply
Description: Applies the terraform changes
```
```python
command: terraform show 
Description: prints tfstate file in readable format
Example: terraform show | grep public_ip     # Will print only public ip
```
```python
command: terraform output
Description: show the output value
```
```python
command: terraform taint <resource name>
Description: when we don't have any changes to infra, and if we run terraform apply no action will be performed. terraform taint can be used at this point.
Example: terraform taint aws_instance.example   #this will mark the instance as tainted and when we run terraform apply, new instance will be created.
```
```python
command: terraform untaint <resource name>
Description: will untaint the resource
```
```python
command: terraform refresh
Description: will check for diff between remote state and local state
```
```python
command: terraform fmt 
Description: will do the standard formating
```
```python
command: terraform validate 
Description: validates the configuration files in a directory
```
```python
command: terraform get
Description: used to download the modules
```
