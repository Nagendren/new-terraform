# Create VPC

This demo helps you to understand the creation of 
- VPC
- Internet gateway
- NAT gateway 

# Internet Gateway 
- helps to connect the internet and it is associated with public subnets

# NAt Gateway
- Instance in private subnets can not be accessed from internet. To access the instance in private instance we can use NAT gateway

# _How routing work_
```python
VPN --> public subnets --> internet gateway + route tabels --> access the internet

VPN --> private subnets --> Nat gateway + route tables --> internetgateway --> access the internet
```

# Note: 
- Nat gateway must be launched in public subnets
