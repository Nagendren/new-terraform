# User Data

In this demo, we can see how user data works and how cloud-init used with user data.

# USER DATA 
-  Is only executed at the creation of the instance, not when the instance reboots.

In this example, we will create ec2 instance and ebs volume. we can format the volume and install few software using user data. 

_There are two types of user data:_
- shell scripts
- cloud-init

We have used cloud-init method for demo.

# IMP Note
- If we are not setting **skip_destroy = true** during volume creation, we will face below error while destroying.(chk instance.tf for reference)

```python
	Error: error detaching EC2 Internet Gateway (igw-XXXXXXXXXXXXXXX) from VPC (vpc-XXXXXXXXXXXXXXXXXXXXXXX): DependencyViolation: Network vpc-XXXXXXXXXXXXXX has some mapped public address(es). Please unmap those public address(es) before detaching the gateway.

	Error: Error waiting for Volume (vol-0f729b77cd2c471a4) to detach from Instance (i-XXXXXXXXXXXXXXXXXX): unexpected state 'busy', wanted target 'detached'. last error: %!s(<nil>)
```
