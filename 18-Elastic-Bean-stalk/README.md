In this demo, we can see how to create Elastic Bean Stalk (EBS) using terraform.

Key points:

1) EBS is AWS's platform as a service(PAAS)

2) We can launch our applications without maintaing any infrastructure.

3) updates are applied to EC2 instance manually or automatically.

4) EBS uses Amazon Linux EC2 instance

5) EBS can handle auto scaling,
    
      it uses LB and autoscaling group to achieve this.

      we can schedule scaling events or enable autoscaling based on metrics.

6) When we deploy EBS, we will get CNAME(hostname) that can be used as endpoint. Same CNAME can be added to ROute53
