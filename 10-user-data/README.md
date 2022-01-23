In this demo, we can see how user data works and how cloud-init used with user data.

	USER DATA -  is only executed at the creation of the instance, not when the instance reboots.

In this code , we will create ec2 instance and ebs volume. we can format the volume and install few software using user data.

there are two types of user data:
	1) shell scripts
	2) cloud-init

in this demo, We have used cloud-init

If we are not setting skip_destroy = true during volume creation, we will face below error while destroying.

	Error: error detaching EC2 Internet Gateway (igw-XXXXXXXXXXXXXXX) from VPC (vpc-XXXXXXXXXXXXXXXXXXXXXXX): DependencyViolation: Network vpc-XXXXXXXXXXXXXX has some mapped public address(es). Please unmap those public address(es) before detaching the gateway.

	Error: Error waiting for Volume (vol-0f729b77cd2c471a4) to detach from Instance (i-XXXXXXXXXXXXXXXXXX): unexpected state 'busy', wanted target 'detached'. last error: %!s(<nil>)
