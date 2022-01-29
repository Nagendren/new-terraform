In this demo, we can see how to create autoscaling in aws using terraform

To setup autoscaling, we need 2 resources,

1) AWS launch configuration
     specifies the properties of the instance to be launched like AMI id, security grp, etc

2) Autoscaling group
     This has scaling properties like minimum instance, max instance, health checks
     after autoscaling group setup, we can create autoscaling policies


