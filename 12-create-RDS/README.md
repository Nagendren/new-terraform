In this demo we can see how to create RDS in AWS using terraform

To create RDS we need,

subnet group : allows you to specify  in what subnets the database should be created [eg: ap-south-1a and ap-south-1b]

parameter group: allows you to specify parameters to changes settings in the database.

security group: allows incoming traffic to the RDS instance.

Note: Do not have RDS password in var file. Instead use run time variables like below

eg: terraform apply -var RDS_PASSWORD=password
