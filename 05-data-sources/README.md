This demo hepls you to understand data sources in terraform

	Datasources provides you dynamic information, which can be used as input in terraform.

In this example, we create a security group and allowing AWS public ips for the port 443. whenever we run terraform apply, new IP list will be pull from AWS and updated to SG.
