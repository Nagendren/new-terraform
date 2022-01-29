In this demo, we can see how to create role and attach it to EC2 instance.

Roles can give temporary access to user or services that they normally wouldn't have

Roles can be attached to EC2 instance, from that instance user/services can obtain access credentials. Using those access credentials user/services can assume  the role and which gives them permission to do something.

Note: Iam roles works only with AWS EC2 instance and not outside AWS. Always assign the role to an EC2 instance at the boot time.

We can use below url to check our temp credentials 

	curl http://169.254.169.254/latest/meta-data/iam/security-credentials/<name of your s3 instance profile>
	
	If you are using above code then, use below url for temp credentials 

	curl http://169.254.169.254/latest/meta-data/iam/security-credentials/s3-mybucket-role
