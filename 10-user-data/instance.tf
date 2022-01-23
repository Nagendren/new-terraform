resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main_public_1.id

  # the security group
  # If you are creating Instances in a VPC, use vpc_security_group_ids and security_groups need to be supplied in the LIST
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name

  # user data
  user_data = data.template_cloudinit_config.cloudinit-example.rendered
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

#creating EBS volume

resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = "ap-south-1a"
  size              = 10
  type              = "gp2"
  tags = {
    Name = "extra volume data"
  }
}

#adding EBS volume to instance

resource "aws_volume_attachment" "ebs-volume-1-attachment" {
  device_name = var.INSTANCE_DEVICE_NAME
  volume_id   = aws_ebs_volume.ebs-volume-1.id
  instance_id = aws_instance.example.id
  skip_destroy = true                  # will be helpfull during terraform destroy. else we will face issue in deleting. see README for reference 
}
