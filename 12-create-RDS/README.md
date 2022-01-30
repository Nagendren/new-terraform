# RDS - Relational Database Service

In this demo we can see how to create RDS in AWS using terraform

To create RDS we need,
- **subnet group** : _allows you to specify  in what subnets the database should be created [eg: ap-south-1a and ap-south-1b]_
- **parameter group**: _allows you to specify parameters to changes settings in the database._
- **security group**: _allows incoming traffic to the RDS instance._

# Note: 
Do not have RDS password in var file. Instead use run time variables like below
```python
terraform apply -var RDS_PASSWORD=password
```
