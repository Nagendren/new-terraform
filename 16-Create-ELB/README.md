# Elastic Load Balancer

# _Keys points about ELB:_
- ELB automatically distributes incoming traffic across multiple EC2 instance. 
- ELB itself will scale when we have more traffic.
- ELB can also be used as SSL terminator. It offloads the encryption away from EC2 instances.
- If we are using ELB, AWS offers free SSL certificates.
- ELB are spread over multiple AZ for high fault tolerance.
- ELB is compared to nginx or HAProxy
- Routes traffic based on network information.
   > Example: _forwards all traffic from port 80 (HTTP) to port 8080 (application)_

# NOTE: 
- We can attach ELB to AutoScaling group.

> In this example we,
- create ELB and attaching it to autoscaling group. 
- We are using same code from demo 15 and making few changes

> below are the changes added:
- Creating elb.tf
- we are adding below attributes to autoscaling.tf
         > _health_check_type         = "ELB"_
         > _load_balancers            = [aws_elb.my-elb.name]_
- creating security group for ELB and allowing ec2 instance in SG 
