# Data Sources

This demo hepls you to understand data sources in terraform
```python
Datasources provides you dynamic information, which can be used as input in terraform
```
	
In this code, 
- we create a security group and allow all AWS public ips for the port 443. 
- whenever we run terraform apply, new IP list will be pulled from AWS and updated to SG.
- IP list are dynamic and are updated using data source
