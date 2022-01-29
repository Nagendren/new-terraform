#create launch configuration

resource "aws_launch_configuration" "example-launchconfig" {
  name_prefix     = "example-launchconfig"
  image_id        = var.AMIS[var.AWS_REGION]
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.mykeypair.key_name     #keys to access ec2 instance
  security_groups = [aws_security_group.myinstance.id]   #SG - where instance will be launched
}

#create auto scaling group

resource "aws_autoscaling_group" "example-autoscaling" {
  name                      = "example-autoscaling"
  vpc_zone_identifier       = [aws_subnet.main_public_1.id, aws_subnet.main_public_2.id]
  launch_configuration      = aws_launch_configuration.example-launchconfig.name
  min_size                  = 1
  max_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  load_balancers            = [aws_elb.my-elb.name]
  force_delete              = true

  tag {
    key                 = "Name"
    value               = "ec2 instance"
    propagate_at_launch = true
  }
}
