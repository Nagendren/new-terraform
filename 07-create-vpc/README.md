This demo helps you to understand the creation of VPC, internet gateway, NAT gateway using terraform

Internet gateways helps to connect the internet and it is associated with public subnets

Instance in private subnets can not be accessed from internet. To access the instance in private instance we can use NAT gateway


VPN --> public subnets --> internet gateway + route tabels --> access the internet

VPN --> private subnets --> Nat gateway + route tables --> internetgateway --> access the internet

Note: Nat gateway must be launched in public subnets
