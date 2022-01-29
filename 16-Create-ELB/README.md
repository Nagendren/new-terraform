In this demo, we can see how to create Elastic Load Balancer(ELB)

Keys points about ELB:

1) ELB automatically distributes incoming traffic across multiple EC2 instance. 

2) ELB itself will scale when we have more traffic.

3) ELB can also be used as SSL terminator. It offloads the encryption away from EC2 instances.

4) If we are using ELB, AWS offers free SSL certificates.

5) ELB are spread over multiple AZ for high fault tolerance.

6) ELB is compared to nginx or HAProxy

7) Routes traffic based on network information. 
    eg: forwards all traffic from port 80 (HTTP) to port 8080 (application)

NOTE: we can attach ELB to AutoScaling group.

In this example, we are creating ELB and attaching it to autoscaling group. We are using same code from demo 15 and few changes

below are the changes added:

   1) Creating elb.tf

   2) we are adding below attributes to autoscaling.tf
         health_check_type         = "ELB"
         load_balancers            = [aws_elb.my-elb.name]

   3)creating security group for ELB and allowing ec2 instance SG 
